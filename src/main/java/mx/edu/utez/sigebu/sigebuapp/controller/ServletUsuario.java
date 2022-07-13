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
    int r;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO, "Path -> "+action);
        switch (action){
            case "/login-usuario":
                String tipo = request.getParameter("matriculaCurp");
                String password = request.getParameter("password");
                int longi = tipo.length();
                if(longi == 18){
                    String curp = request.getParameter("matriculaCurp");

                }else if(longi ==10){
                    String matricula = request.getParameter("matriculaCurp");
                    usuarioBean.setMatricula(matricula);
                    usuarioBean.setPassword(password);
                    r=usuarioDAO.validarAlumno(usuarioBean);
                    if(r==1){
                        request.getRequestDispatcher("../../main/webapp/views/sigebu/index.jsp").forward(request, response);

                    }else{
                        request.getRequestDispatcher("../../main/webapp/views/sigebu/login.jsp").forward(request, response);
                    }
                }

                break;
            default:
                break;
        }
    }

}
