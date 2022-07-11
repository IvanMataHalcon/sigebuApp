<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Bienvenida</title>
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
    #div_relleno{
        background-color: transparent;
        width: 33.33%;
        height: 100%;

    }

</style>

<div class="container col-12">
    <div id="logo">

    </div>
    <div class="row">
        <div id="div_relleno">

        </div>
        <div  id="bienvenido">
            <h1 style="color: white;">BIENVENIDO A SIGEBU</h1>
            <a href="hello-servlet" class="text-light">INGRESAR</a>

        </div>
        <div id="div_relleno">

        </div>

    </div>
</div>
</body>
</html>