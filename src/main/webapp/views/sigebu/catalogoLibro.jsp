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
</head>
<body>
<jsp:include page="../../templates/navbar.jsp"/>
<div class="container">
    <jsp:include page="../../templates/sidebar2.jsp"/>
  <div class="contenido">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</div>

<jsp:include page="../../templates/footer.jsp"/>

</body>
</html>
