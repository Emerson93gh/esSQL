<?php
/* PDO SQL */

try {
    $db = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo 'Conectado correctamente!';
} catch (Exception $e) {
    echo 'Error interno, no se pudo conectar a la Base de Datos' . $e->getMessage();
}

?>