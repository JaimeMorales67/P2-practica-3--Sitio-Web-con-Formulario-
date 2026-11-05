<?php
// Incluye el archivo de conexión a la base de datos
include('conexion.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $accion = $_POST['accion'];

    // PROCESO DE REGISTRO DE USUARIO
    if ($accion == 'registro') {

        $nombre     = trim($_POST['nombre']);
        $correo     = trim($_POST['correo']);
        $contrasena = trim($_POST['contrasena']);
        $celular    = trim($_POST['celular']);
        $pais       = trim($_POST['pais']);

        // Comprobar si el correo ya existe
        $check = $conexion->prepare("SELECT id FROM usuarios WHERE correo = ?");
        $check->bind_param("s", $correo);
        $check->execute();
        $res = $check->get_result();

        if ($res->num_rows > 0) {
            echo "<script>
                    alert('El correo ya se encuentra registrado.');
                    window.location.href = 'registro.html';
                  </script>";
        } else {
            // Encriptar contraseña e insertar
            $pass_hash = password_hash($contrasena, PASSWORD_DEFAULT);
            $stmt = $conexion->prepare("INSERT INTO usuarios (nombre, correo, contrasena, celular, pais) VALUES (?, ?, ?, ?, ?)");
            $stmt->bind_param("sssss", $nombre, $correo, $pass_hash, $celular, $pais);

            if ($stmt->execute()) {
                echo "<script>
                        alert('¡Registro exitoso! Ya puedes iniciar sesión.');
                        window.location.href = 'login.html';
                      </script>";
            } else {
                echo "<h2>Error al registrar: " . $conexion->error . "</h2>";
            }
            $stmt->close();
        }
        $check->close();
    }

    // PROCESO DE INICIO DE SESIÓN
    if ($accion == 'login') {

        $correo     = trim($_POST['correo']);
        $contrasena = trim($_POST['contrasena']);

        $stmt = $conexion->prepare("SELECT nombre, contrasena FROM usuarios WHERE correo = ?");
        $stmt->bind_param("s", $correo);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($row = $res->fetch_assoc()) {
            if (password_verify($contrasena, $row['contrasena'])) {
                $nombreUsuario = htmlspecialchars($row['nombre']);
                echo "<script>
                        alert('BIENVENIDO " . strtoupper($nombreUsuario) . "');
                        window.location.href = 'tenis.html';
                      </script>";
            } else {
                echo "<script>
                        alert('Contraseña incorrecta.');
                        window.location.href = 'login.html';
                      </script>";
            }
        } else {
            echo "<script>
                    alert('No existe una cuenta vinculada a este correo.');
                    window.location.href = 'registro.html';
                  </script>";
        }
        $stmt->close();
    }
}
?>