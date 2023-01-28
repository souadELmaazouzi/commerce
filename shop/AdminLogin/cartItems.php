<?php //securiseee
require_once 'config.php';
//get items to the cart
$cartItems=$_POST["carts"];
$tab=[];

foreach ($cartItems as $key => $value) {
    $result= $mysqli->query("Select * from article where reference like '%$value%' ")or die($mysqli->error);
    //parcourir le curseur (fetch)
    $ligne=mysqli_fetch_assoc($result);
    $tab[]=$ligne;

}
echo json_encode($tab);