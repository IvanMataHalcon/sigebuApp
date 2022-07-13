package mx.edu.utez.sigebu.sigebuapp.service;

import mx.edu.utez.sigebu.sigebuapp.model.UsuarioBean;
import mx.edu.utez.sigebu.sigebuapp.model.UsuarioDAO;
import mx.edu.utez.sigebu.sigebuapp.utils.ResultAction;

import java.util.List;

public class ServiceUsuario {
    UsuarioDAO usuarioDAO = new UsuarioDAO();
public List<UsuarioBean> getAll(){
    return usuarioDAO.findAll();
}
public ResultAction save(UsuarioBean usuarioBean){
    ResultAction result = new ResultAction();
    if (usuarioDAO.save(usuarioBean)){
        result.setResult(true);
        result.setMessage("Usuario registrado correctamente");
        result.setStatus(200);
    }else{
        result.setResult(false);
        result.setMessage("Ocurrio un error al registrar");
        result.setStatus(400);
    }
    return result;
}
public UsuarioBean getUsuarioBean(int id){
    return usuarioDAO.findOne(id);
}
public ResultAction update (UsuarioBean usuarioBean){
    ResultAction result = new ResultAction<>();
    if (usuarioDAO.update(usuarioBean)){
        result.setStatus(200);
        result.setResult(false);
        result.setMessage("Usuario actualizado correctamente");
    }else{
        result.setStatus(400);
        result.setResult(true);
        result.setMessage("Ocurrio un error");
    }
    return result;
}

}
