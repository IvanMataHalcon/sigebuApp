<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 11/07/2022
  Time: 09:42 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .sidebar-container{
        min-height: 100vh;
        max-width: 25vh;
        background-color: #002E61;
        align-content: center;

    }
    .sidebar-container .menu{
        width: 10rem;
    }
    a:hover{
        text-decoration: none;
        background-color: rgba(9, 120, 194, 0.726);
        width: 100%;
    }
    .logo{
        height: 20%;
    }
</style>
<div class="d-flex">
    <div class="sidebar-container" class="bg-primary">
        <div class="logo">
            <h3></h3>

        </div>
        <div class="menu">
            <a href="#" class="d-block text-light p-4 ">CATALOGO</a>
            <a href="#" class="d-block text-light p-4">PRESTAMOS</a>
            <a href="#" class="d-block text-light p-4">MI PERFIL</a>
        </div>
    </div>

</div>