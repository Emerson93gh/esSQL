<!DOCTYPE html>
<html lang="es">
<?php
include_once 'model/conexion.php';

$sentencia = $db->query("SELECT * FROM usuarios");
$usuario = $sentencia->fetchAll(PDO::FETCH_OBJ);

?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>esSQL</title>
</head>
<body>
    <h1>esSQL</h1>
    <br>
    <?php
        var_dump($usuario);
    ?>
</body>
</html>