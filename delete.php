<?php
require './tmp/connection.php';
$id = $_GET['id'];
$sQL  = "DELETE FROM users where id = '$id'";
$excut= mysqli_query($conn , $sQL);
if(isset($excut)){
    
     header("location:dashboard.php");
    
}
 
?>
<?php
require './tmp/connection.php';
$id = $_GET['id'];
$sQL  = "DELETE FROM product where id = '$id'";
$excut= mysqli_query($conn , $sQL);
if(isset($excut)){
    
     header("location:dashboard.php");
    
}
 
?>
