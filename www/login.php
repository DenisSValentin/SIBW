<?php
    require_once "/usr/local/lib/php/vendor/autoload.php";
    include 'bd.php';

    $loader = new \Twig\Loader\FilesystemLoader('templates');
    $twig = new \Twig\Environment($loader);

    $conexion = Conexion::getInstance();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $nick = $_POST['nick'];
        $pass = $_POST['pass'];

        if ($conexion->comprobarSesion($nick, $pass)) {
            session_start();
            $_SESSION['nickUsuario'] = $nick;
        }

        header("Location: index.php");
        exit();
    }

    echo $twig->render('login.html', []);

    // $conexion->cerrarConexion();
?>