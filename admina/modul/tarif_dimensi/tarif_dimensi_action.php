<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("kelompok"=>$_POST["kelompok"],"tujuan"=>$_POST["tujuan"],"harga"=>$_POST["harga"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],);
  
  
  
   
    $in = $db->insert("tarif_dimensi",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("tarif_dimensi","id",$_GET["id"]);
    break;
  case "up":
   $data = array("kelompok"=>$_POST["kelompok"],"tujuan"=>$_POST["tujuan"],"harga"=>$_POST["harga"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],);
   
   
   

    
    $up = $db->update("tarif_dimensi",$data,"id",$_POST["id"]);
    if ($up=true) {
      echo "good";
    } else {
      return false; 
    }
    break;
  default:
    # code...
    break;
}

?>