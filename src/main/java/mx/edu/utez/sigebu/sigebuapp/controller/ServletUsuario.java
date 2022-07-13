package mx.edu.utez.sigebu.sigebuapp.controller;

import mx.edu.utez.sigebu.sigebuapp.model.UsuarioBean;
import mx.edu.utez.sigebu.sigebuapp.model.UsuarioDAO;
import mx.edu.utez.sigebu.sigebuapp.service.ServiceUsuario;
import mx.edu.utez.sigebu.sigebuapp.utils.ResultAction;


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
    ServiceUsuario serviceUsuario = new ServiceUsuario();
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
                urlRedirect = "/views/sigebu/index.jsp";
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
                            urlRedirect = "/get-usuarios";
                        }
                    }
                }catch (Exception e){
                    urlRedirect = "/get-usuarios";
                }

                break;
            case "/add-usuario":
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String edad = request.getParameter("edad");
                String direccion = request.getParameter("direccion");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String matriculaCurp = request.getParameter("matriculaCurp");
                usuarioBean.setNombre(nombre);
                usuarioBean.setApellidos(apellidos);
                usuarioBean.setEdad(Integer.parseInt(edad));
                usuarioBean.setDireccion(direccion);
                usuarioBean.setEmail(email);
                usuarioBean.setPassword(password);
                usuarioBean.setMatricula(matriculaCurp);
                String tipo = "Alumno";
                String curp = "";
                usuarioBean.setTipo(tipo);
                usuarioBean.setMatricula(curp);
                ResultAction result = serviceUsuario.save(usuarioBean);
                urlRedirect = "/get-usuarios?result="+result.isResult()+
                        "&message="+result.getMessage()+"&status="+result.getStatus();

                break;
            default:
                break;
        }
    }

}
