<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("nama_layanan"=>$_POST["nama_layanan"],);
  
  
  
   
    $in = $db->insert("layanan",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("layanan","id",$_GET["id"]);
    break;
  case "up":
   $data = array("nama_layanan"=>$_POST["nama_layanan"],);
   
   
   

    
    $up = $db->update("layanan",$data,"id",$_POST["id"]);
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