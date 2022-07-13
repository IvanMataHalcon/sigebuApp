<%--
  Created by IntelliJ IDEA.
  User: julio
  Date: 12/07/2022
  Time: 01:10 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../css/StyleSidebar.css">

<nav class="nav" >
    <ul class="list">

        <li class="list__item">
            <div class="list__button">
                <img src="../../assets/imgs/inicio.svg" class="list__img">
                <a href="#" class="nav__link ">INICIO</a>
            </div>
        </li>

        <li class="list__item list__item--click">
            <div class="list__button list__button--click">
                <img src="../../assets/imgs/catalogo.svg" class="list__img">
                <a href="#" class="nav__link">CATALOGO</a>
                <img src="../../assets/imgs/arrow.svg" class="list__arrow">
            </div>

            <ul class="list__show">
                <li class="list__inside">
                    <a href="#" class="nav__link nav__link--inside">Libros</a>
                </li>

                <li class="list__inside">
                    <a href="#" class="nav__link nav__link--inside">Salas</a>
                </li>
            </ul>

        </li>

        <li class="list__item list__item--click">
            <div class="list__button list__button--click">
                <img src="../../assets/imgs/prestamos.svg" class="list__img">
                <a href="#" class="nav__link">PRESTAMOS</a>
                <img src="../../assets/imgs/arrow.svg" class="list__arrow">
            </div>

            <ul class="list__show">
                <li class="list__inside">
                    <a href="#" class="nav__link nav__link--inside">Libros</a>
                </li>

                <li class="list__inside">
                    <a href="#" class="nav__link nav__link--inside">Salas</a>
                </li>
            </ul>

        </li>


        <li class="list__item">
            <div class="list__button">
                <img src="../../assets/imgs/prestamos.svg" class="list__img">
                <a href="#" class="nav__link">MI PERFIL</a>
            </div>
        </li>

    </ul>
</nav>


<script src="../../js/sidebar2.js"></script>

