<%--
  Created by IntelliJ IDEA.
  User: aenri
  Date: 11/07/2022
  Time: 02:03 p. m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <jsp:include page="../../templates/head.jsp"/>
  <title>SIGEBU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="../../css/style.css">
</head>
<body class="body_login">
<br>

<div class="container2">
  <br>
  <img src="../../assets/imgs/LOGO-SIGUEBU2.png" class="logo_login" alt="">
  <br>
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <form id="formulario" class="needs-validation" novalidate action="login-usuario" method="post">
            <div class="mb-3">
              <label for="matriculaCurp" class="form-label fw-bold">Matricula o Curp</label>
              <input type="text" class="form-control" id="matriculaCurp" name="matriculaCurp" aria-describedby="emailHelp" placeholder="Ingresa Matricula o Curp" required>
              <div class="invalid-feedback">Campo Obligatorio</div>
            </div>
            <div class="mb-3" style="position: relative;">
              <label for="password" class="form-label fw-bold">Contraseña</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa contraseña" required >
              <img src="../../assets/imgs/visibilidad.png" id="eye" class="eye" alt="">
              <div class="invalid-feedback">Campo Obligatorio</div>
            </div>

            <div class="d-grid gap-2 col-6 mx-auto">
              <button type="submit" class="btn btn-primary btn-lg" name="accion" value="ingresar">Iniciar Sesión</button>

            </div>

            <br>
            <div class="col-12 text-center" >
              <p>¿Aún no tienes una cuenta?<a href="registro.jsp" style="text-decoration: none;"> Registrate</a></p>
            </div>
          </form>
        </div>
      </div>
      <br>
    </div>
  </div>
</div>
<script src="../../js/javascript.js"></script>

</body>
</html>
