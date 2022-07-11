<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="templates/head.jsp"/>
</head>
<body>

<style>
    .container{
        background-color: #002E61;
        width: 100%;
        height: 100vh;
        align-content: center;
    }
    .row{
        background-color: transparent;
        align-items: center;
        height: 30vh;

    }
    #logo{
        height: 30%;
    }
    a:hover{
        text-decoration: none;
        width: 100%;

    }
    #bienvenido{
        text-align: center;
        background-color: transparent;
        width: 33.33%;
        height: 100%;
    }
    .div_relleno{
        background-color: transparent;
        width: 33.33%;
        height: 100%;

    }

</style>

<div class="container col-12">
    <div id="logo">

    </div>
    <div class="row">
        <div class="div_relleno">

        </div>
        <div  id="bienvenido">
            <h1 style="color: white;">BIENVENIDO A SIGEBU!</h1>
            <a href="views/sigebu/login.jsp" class="text-light">INGRESAR</a>

        </div>
        <div class="div_relleno">

        </div>

    </div>
</div>
</body>
</html>