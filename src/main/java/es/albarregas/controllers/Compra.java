
package es.albarregas.controllers;

import es.albarregas.beans.Libro;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Francisco_Antonio
 */
@WebServlet(name = "Compra", urlPatterns = {"/Compra"})
public class Compra extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("HTML/errorAcceso.html").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mensaje = "";
        String titulo = request.getParameter("titulo");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        ArrayList<Libro> libros;
        
        HttpSession sesion = request.getSession();
        
        if (titulo == null || cantidad == 0) {
            mensaje = "Debes seleccionar un libro y una cantidad";
        } else {
            Cookie[] cookies = request.getCookies();
            Cookie cookie = null;
            for (Cookie c : cookies) {
                if (c.getName().equals("libros")) {
                    cookie = c;
                }
            }
            if (sesion.getAttribute("libros") == null) {
                if (cookie != null) {
                    String[] valores = cookie.getValue().split(",");
                    libros = new ArrayList<>();
                    for (int i = 1; i < valores.length; i += 2) {

                        libros.add(new Libro(valores[i].replace("_", " "), Integer.parseInt(valores[i - 1])));
                    }
                } else {
                    libros = (ArrayList<Libro>) sesion.getAttribute("libros");
                    cookie = new Cookie("libros", "");
                    cookie.setMaxAge(60 * 60 * 24);
                }

            } else {
                libros = (ArrayList<Libro>) sesion.getAttribute("libros");
            }
            if (libros == null) {
                libros = new ArrayList<>();
                libros.add(new Libro(titulo, cantidad));
            } else {
                boolean repe = false;
                for (Libro l : libros) {
                    if (l.getTitulo().equals(titulo)) {
                        l.setCantidad((l.getCantidad() + cantidad));
                        repe = true;
                    }
                }
                if (!repe) {
                    libros.add(new Libro(titulo, cantidad));
                }
            }
            mensaje = "Has añadido " + cantidad + " unidades de " + titulo;
            sesion.setAttribute("libros", libros);
            String value = String.valueOf(libros.get(0).getCantidad()) + "," + libros.get(0).getTitulo().replace(" ", "_");
            if (libros.size() > 1) {
                for (int i = 1; i < libros.size(); i++) {
                    value += "," + String.valueOf(libros.get(i).getCantidad()) + "," + libros.get(i).getTitulo();
                }
            }
            response.addCookie(cookie);
        }
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("JSP/tienda.jsp").forward(request, response);
    }



}
