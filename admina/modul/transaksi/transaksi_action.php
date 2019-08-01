<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("nama_provinsi"=>$_POST["nama_provinsi"],);
  
  
  
   
    $in = $db->insert("provinsi",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("provinsi","id",$_GET["id"]);
    break;
  case "up":
   $data = array("nama_provinsi"=>$_POST["nama_provinsi"],);
   
   
   

    
    $up = $db->update("provinsi",$data,"id",$_POST["id"]);
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