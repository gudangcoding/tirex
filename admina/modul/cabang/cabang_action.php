<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("nama_cabang"=>$_POST["nama_cabang"],"kode_cabang"=>$_POST["kode_cabang"],);
  
  
  
   
    $in = $db->insert("cabang",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("cabang","id",$_GET["id"]);
    break;
  case "up":
   $data = array("nama_cabang"=>$_POST["nama_cabang"],"kode_cabang"=>$_POST["kode_cabang"],);
   
   
   

    
    $up = $db->update("cabang",$data,"id",$_POST["id"]);
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