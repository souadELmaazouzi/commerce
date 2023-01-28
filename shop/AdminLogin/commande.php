<?php//securisee
require_once 'config.php';

$commande=mysqli_real_escape_string($mysqli ,$_POST["commande"]);


$n = $mysqli->query("SELECT max(idlistecom) FROM listecommande");

$ligne=mysqli_fetch_assoc($n);
if(implode($ligne)!=null)
{
    $s= intval( implode($ligne))+1;
}
else
{
    $s=1;
}
foreach ($commande as $value) {
    $result= $mysqli->query("insert into listecommande (idlistecom,quantite,idClient,reference,statut,livraison)
     values('".$s."','".$value['quantite']."','".$value['idClient']."','".$value['reference']."','0','".$value['livraison']."') ")or die($mysqli->error);
   
if(!$result)
{
    echo("not inserted");
}
else{
    echo($s);
}

}
