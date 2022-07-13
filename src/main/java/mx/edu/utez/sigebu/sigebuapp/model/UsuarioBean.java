package mx.edu.utez.sigebu.sigebuapp.model;

public class UsuarioBean {
    int id;
    String nombre;
    String apellidos;
    String curp;
    String matricula;
    int edad;
    String tipo;
    String direccion;
    String password;
    String email;

    public UsuarioBean() {
    }

    public UsuarioBean(int id, String nombre, String apellidos, String curp, String matricula, int edad, String tipo, String direccion, String password, String email) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.curp = curp;
        this.matricula = matricula;
        this.edad = edad;
        this.tipo = tipo;
        this.direccion = direccion;
        this.password = password;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
