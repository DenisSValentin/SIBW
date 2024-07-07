<?php
    require_once "/usr/local/lib/php/vendor/autoload.php";
    require_once "credenciales.php";

    class Conexion {

      private static $intance = null;
      private $conexion;
    
      // Me conecto a la BD
      private function __construct() {
        $this->conexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
        if ($this->conexion->connect_errno) {
          echo ("Fallo al conectar: " . $this->conexion->connect_error);
        }
      }
    
      // Genero un objeto con el que voy a trabajar todo el rato
      public static function getInstance() {
        if (self::$intance == null) {
          self::$intance = new Conexion();
        }
    
        return self::$intance;
      }
    
      // Obtener el objeto conexion
      public function getConexion() {
        return $this->conexion;
      }
    
      // Función que me sirve para saber el número total de científicos que hay
      public function numCientificos(){
        $resultado_total = $this->conexion->query("SELECT COUNT(*) AS total FROM cientificos");
        $fila_total = $resultado_total->fetch_assoc();
        $numCientificos = $fila_total['total'];
    
        return $numCientificos;
      }
    
      // Función que me devuelve todos los científicos que tengo
      public function obtenerCientificos() {
        $cientificos = array();
        $resultado = $this->conexion->query("SELECT * FROM cientificos");

        if ($resultado->num_rows > 0) {
          while($fila = $resultado->fetch_assoc()) {
            $cientificos[] = $fila;
          }
        }

        return $cientificos;
      }

      // Función que me devuelve todos los datos de un científico en concreto
      public function obtenerCientifico($scId) {
        $numCientificos = $this->numCientificos();
    
        if ($scId > 0 && $scId <= $numCientificos) {
            $stmt = $this->conexion->prepare("SELECT * FROM cientificos WHERE id = ?");
            $stmt->bind_param("i", $scId);
            $stmt->execute();
    
            $resultado = $stmt->get_result();
    
            if ($resultado->num_rows > 0) {
                $cientifico = $resultado->fetch_assoc();
                return $cientifico;
            } else {
                throw new Exception("No se encontró ningún científico con ese ID.");
            }
        } else {
            throw new Exception("El ID del científico no es válido.");
        }
      }
    
      // Función que me sirve para obtener los comentarios acerca de un determinado científico
      public function obtenerComentarios($scId) {
        $numCientificos = $this->numCientificos();
    
        if ($scId > 0 && $scId <= $numCientificos) {
            $comentarios = array();
            $stmt = $this->conexion->prepare("SELECT * FROM comentarios WHERE id = ?");
            $stmt->bind_param("i", $scId);
            $stmt->execute();
    
            $resultado = $stmt->get_result();
    
            if ($resultado->num_rows > 0) {
                while ($fila = $resultado->fetch_assoc()) {
                    $comentarios[] = $fila;
                }
            }
    
            return $comentarios;
        } else {
            throw new Exception("El ID del científico no es válido.");
        }
      }
    
      // Función que me sirve para obtener las fotos de un determinado científico
      public function obtenerFotos($scId) {
        $numCientificos = $this->numCientificos();
    
        if ($scId > 0 && $scId <= $numCientificos) {
            $fotos = array();
            $stmt = $this->conexion->prepare("SELECT * FROM fotos WHERE id = ?");
            $stmt->bind_param("i", $scId);
            $stmt->execute();
    
            $resultado = $stmt->get_result();
    
            if ($resultado->num_rows > 0) {
                while ($fila = $resultado->fetch_assoc()) {
                    $fotos[] = $fila;
                }
            }
    
            return $fotos;
        } else {
            throw new Exception("El ID del científico no es válido.");
        }
      }
    
      // Función que me sirve para obtener los enlaces de interés de un determinado científico
      public function obtenerCosasInteres($scId) {
        $numCientificos = $this->numCientificos();
    
        if ($scId > 0 && $scId <= $numCientificos) {
            $cosasInt = array();
            $stmt = $this->conexion->prepare("SELECT * FROM cosasInteres WHERE id = ?");
            $stmt->bind_param("i", $scId);
            $stmt->execute();
    
            $resultado = $stmt->get_result();
    
            if ($resultado->num_rows > 0) {
                while ($fila = $resultado->fetch_assoc()) {
                    $cosasInt[] = $fila;
                }
            }
    
            return $cosasInt;
        } else {
            throw new Exception("El ID del científico no es válido.");
        }
      }

      // Función que me devuelve las palabras que no son válidas para los comentarios
      public function obtenerPalabrasProhibidas() {
            
        $palabrasProhibi = array();
        $resultado = $this->conexion->query("SELECT * FROM palabras");

        if ($resultado->num_rows > 0) {
          while($fila = $resultado->fetch_assoc()) {
            $palabrasProhibi[] = $fila;
          }
        }

        return $palabrasProhibi;
      }
    
      
      // TEMA GESTIÓN DE USUARIOS
      // Registra a un usuario en el sistema si no lo estaba previamente
      public function registrarUsuario($nick, $pass) {
    
        $stmt = $this->conexion->prepare("SELECT * FROM usuarios WHERE username = ?");
        $stmt->bind_param("s", $nick);
        $stmt->execute();
        $resultado = $stmt->get_result();
    
        if ($resultado->num_rows > 0) {
            return false;
        }
    
        $hash = password_hash($pass, PASSWORD_DEFAULT);
    
        $stmt = $this->conexion->prepare("INSERT INTO usuarios (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $nick, $hash);
    
        if ($stmt->execute()) {
            return true;
        } else {
            throw new Exception("Error al insertar usuario: " . $stmt->error);
        }
      }

      // Comprueba si un usuario está registrado en la BD y su contraseña es correcta
      public function comprobarSesion($nick, $pass) {
    
        $resultado = $this->conexion->query("SELECT * FROM usuarios WHERE username='$nick'");
        $usuario = $resultado->fetch_assoc();
    
        if ($resultado) {
            if (password_verify($pass, $usuario['password'])) {
                return true;
            }
        }
    
        return false;
        
      }

      // Función para cerrar la conexión
      public function cerrarConexion() {
        $this->getConexion()->close();
      }
    }

?>