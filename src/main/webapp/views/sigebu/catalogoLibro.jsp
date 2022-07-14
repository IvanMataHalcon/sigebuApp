<%--
  Created by IntelliJ IDEA.
  User: aenri
  Date: 13/07/2022
  Time: 02:35 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>SIGEBU</title>
  <jsp:include page="../../templates/head.jsp"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="../../css/style.css">
  <link rel="stylesheet" href="../../css/styleFooter.css">
  <link rel="stylesheet" href="../../css/styleSidebar.css">
</head>
<body>
<jsp:include page="../../templates/navbar.jsp"/>
<div>
    <jsp:include page="../../templates/sidebar2.jsp"/>
</div>
<div class="contenedor">
  <div class="row">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
      <div class="col-12 contenido">
        <div class="card-header">
          <div class="row">
            <div class="col-6 text-center">LIBROS</div>
            <div class="col-6 text-end">
              <a href="create-libro" class="btn btn-outline-success btn-sm">Registrar libro</a>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table class="table table-sm table-hover">
            <thead>
            <th>#</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Descripcion</th>
            <th>Categoria</th>
            <th>Clasificacion</th>
            <th>Año</th>
            <th>editorial</th>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
      </div>
    </form>
  </div>
</div>




<jsp:include page="../../templates/footer.jsp"/>

</body>
</html>
