package mx.edu.utez.sigebu.sigebuapp.controller;

import mx.edu.utez.sigebu.sigebuapp.model.UsuarioBean;
import mx.edu.utez.sigebu.sigebuapp.model.UsuarioDAO;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ServletUsuario",
        urlPatterns = {
                "/login-usuario",
                "/get-usuarios",
                "/add-usuario",
                "/create-usuario",
                "/update-usuario",
                "/get-usuario"
        })
public class ServletUsuario extends HttpServlet {
    String urlRedirect = "/get-usuarios";
    Logger logger = Logger.getLogger("ServletUsuario");
    String action;
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    UsuarioBean usuarioBean = new UsuarioBean();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO, "Path -> "+action);
        switch (action){
            case "/get-usuarios":
                urlRedirect = "/views/sigebu/login.jsp";
                break;
            default:
                urlRedirect = "/get-pokemons";
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO, "Path -> "+action);
        switch (action){
            case "/login-usuario":
                try{
                    String accion = request.getParameter("accion");
                    if (accion.equals("ingresar")){
                        String matricula = request.getParameter("matriculaCurp");
                        String password_user = request.getParameter("password");
                        usuarioBean = usuarioDAO.validarAlumno(matricula, password_user);
                        if (usuarioBean.getNombre() != null){
                            urlRedirect = "/views/sigebu/index.jsp";
                        }
                    }
                }catch (Exception e){
                    urlRedirect = "/get-usuarios";
                }

                break;
            default:
                break;
        }
    }

}
