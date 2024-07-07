<?php
    require_once "/usr/local/lib/php/vendor/autoload.php";
    require_once "bd.php";

    $loader = new \Twig\Loader\FilesystemLoader('templates');
    $twig = new \Twig\Environment($loader);

    $conexion = Conexion::getInstance();

    $cientificos = $conexion->obtenerCientificos(); 

    $conexion->cerrarConexion();

    echo $twig->render('principal.html', ['cientificos' => $cientificos]);
?>