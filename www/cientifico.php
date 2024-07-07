<?php
    require_once "/usr/local/lib/php/vendor/autoload.php";
    require_once "bd.php";

    $loader = new \Twig\Loader\FilesystemLoader('templates');
    $twig = new \Twig\Environment($loader);

    $scID = (isset($_GET['scid'])) ? $_GET['scid'] : -1;

    $conexion = Conexion::getInstance();

    $cientifico = $conexion->obtenerCientifico($scID);
    $fotos = $conexion->obtenerFotos($scID);
    $cosasInteres = $conexion->obtenerCosasInteres($scID);
    $comentarios = $conexion->obtenerComentarios($scID);
    $palabrasProhibi = $conexion->obtenerPalabrasProhibidas();
    /*
    $palabrasProhibidasUnidimensional = array();
    foreach ($palabrasProhibi as $palabra) {
        $palabrasProhibidasUnidimensional[] = $palabra['nombre'];
    }*/
    /*
    var_dump($palabrasProhibi);
    echo json_encode($palabrasProhibi);*/

    $conexion->cerrarConexion();
    
    echo $twig->render('cientifico.html', ['cientifico' => $cientifico, 'fotos' => $fotos, 'cosasInteres' => $cosasInteres, 'comentarios' => $comentarios, 'palabrasProhibi' => $palabrasProhibi]);
?>