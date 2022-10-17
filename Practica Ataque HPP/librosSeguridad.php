<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional //EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"></html>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<TITLE>Libros de Seguridad</TITLE>
</HEAD>
<body bgColor="black">
    <h3>Binevenido a la biblioteca virtual, por favor introduce el parametro ID en la URL y asignale un número</h3>
    <br><br><br>
    <?php 
    function conexionDB(){
        return $conexion = mysqli_connect('127.0.0.1','root','1234','libros');
    }
    if(isset($_GET['enviar'])){
        $id = $_GET['id'];
        $conexion = conexionDB();
        $consulta = "select Titulo, Autores, Editorial from seguridad 
                        where Id = '$id'
                ";
        $result = mysqli_query($conexion,$consulta);     
        if(result == true){
            echo "<table>";
            echo "<tr><td>Titulo</td><td>Autores</td><td>Editorial</td></tr>";
            while($row = mysqli_fetch_array($result)){
                echo "<tr>";
                echo "<td>".$row['Titulo']."</td>";
                echo "<td>".$row['Autores']."</td>";
                echo "<td>".$row['Editorial']."</td>";
                echo "</tr>";
            }
            echo"</table>";
        }   
    }
    ?>
</body>
</HTML>

<?php
/*
DB => libros
Create Table seguridad (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Titulo varchar(255),
    Autores varchar(255),
    Editorial varchar(255)
    )*/ 
?>