<?php

$pdo = null;
$host = 'localhost';
$user = 'root';
$password = '1234';
$bd = 'crud_react_php';

// Conectar con la BD
function conectar(){
    try {
        $GLOBALS['pdo'] = new PDO("mysql:host=localhost;dbname=crud_react_php", 'root','1234');
        $GLOBALS['pdo']->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch ( PDOException $e) {
        print 'Error! No se pudo conectar con la base de datos'.$GLOBALS['bd'].'<br/>';
        print 'Error!:'.$e.'<br/>';
        die();
    }
}
// Desconectar de la bd
function desconectar(){
    $GLOBALS['pdo'] = null;  
}

// Metodo get
function metodoGet($query){
    try{
        conectar();
        $sentencia = $GLOBALS['pdo']->prepare($query);
        $sentencia->setFetchMode(PDO::FETCH_ASSOC);
        $sentencia->execute();
        desconectar();
        return $sentencia;
    }catch(Exception $e){
        die('Error!: '.$e);
    }
}
// Post
function metodoPost($query, $queryAutoIncrement){
    try{
        conectar();
        $sentencia = $GLOBALS['pdo']->prepare($query);
        $sentencia->execute();
        $idAutoIncrement= metodoGet($queryAutoIncrement)->fetch(PDO::FETCH_ASSOC);
        $resultado= array_merge($idAutoIncrement, $_POST);
        $sentencia->closeCursor();
        desconectar();
        return $resultado;
    }catch(Exception $e){
        die('Error!: '.$e);
    }
}

// Put
function metodoPut($query){
    try{
        conectar();
        $sentencia = $GLOBALS['pdo']->prepare($query);
        $sentencia->execute();        
        $resultado= array_merge($_GET, $_POST);
        $sentencia->closeCursor();
        desconectar();
        return $resultado;
    }catch(Exception $e){
        die('Error!: '.$e);
    }
}
// delete
function metodoDelete($query){
    try{
        conectar();
        $sentencia = $GLOBALS['pdo']->prepare($query);
        $sentencia->execute();        
        $sentencia->closeCursor();
        desconectar();
        return $_GET['id'];
    }catch(Exception $e ){
        die('Error!: '.$e);
    }
}

?>