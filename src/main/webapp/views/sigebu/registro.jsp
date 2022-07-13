<%--
  Created by IntelliJ IDEA.
  User: aenri
  Date: 11/07/2022
  Time: 02:08 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <jsp:include page="../../templates/head.jsp"></jsp:include>
  <title>SIGEBU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="../../css/style.css">
</head>
<body class="body_login">
<br>
<div class="container2">
  <br>
  <div class="card">
    <div class="card-body ">

      <form class="row needs-validation" id="formulario" novalidate action="add-usuario" method="POST">
        <div class="col-12 text-center">
          <img src="../../assets/imgs/LOGO-SIGUEBU2.png" class="logo_sigebu" alt="">
          <h1>REGISTRARSE</h1>
        </div>

        <div class="col-6">
          <label for="nombre" class="form-label fw-bold">Nombre</label>
          <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="col-6">
          <label for="apellidos" class="form-label fw-bold">Apellidos</label>
          <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" required>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="col-6">
          <label for="edad" class="form-label fw-bold">Edad</label>
          <input type="number" class="form-control" id="edad" name="edad" placeholder="Edad" required>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="col-6">
          <label for="direccion" class="form-label fw-bold">Dirección</label>
          <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección" required>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="col-6">
          <label for="email" class="form-label fw-bold">Correo Electronico</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Ingresa Correo institucional" required>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="col-6">
          <label for="password" class="form-label fw-bold">Contraseña</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa contraseña" required >
          <img src="../../assets/imgs/visibilidad.png" id="eye" class="eye" alt="">
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="mb-3">
          <label for="matriculaCurp" class="form-label fw-bold">Matricula o Curp</label>
          <input type="text" class="form-control" id="matriculaCurp" name="matriculaCurp" placeholder="Ingresa matricula o curp" required>
          <p>*Nota: Si eres Docente ingresa CURP y si eres Alumno ingresa Matricula</p>
          <div class="invalid-feedback">Campo Obligatorio</div>
        </div>
        <div class="mb-3">
          <label class="form-label fw-bold">Tipo de Usuario</label>
          <br>

          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
            <label class="form-check-label" for="inlineRadio1">Docente</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
            <label class="form-check-label" for="inlineRadio2">Alumno</label>
          </div>
        </div>

        <div class="d-grid gap-2 col-6 mx-auto">
          <button type="submit" class="btn btn-primary btn-lg">Registrarse</button>
        </div>
        <br>
        <div class="col-12 text-center" >
          <p>¿Ya tienes una cuenta?<a href="login.jsp" style="text-decoration: none;"> Iniciar Sesión</a></p>
        </div>
      </form>
    </div>
  </div>
</div>
<script src="../../js/javascript.js"></script>
</body>
</html>
