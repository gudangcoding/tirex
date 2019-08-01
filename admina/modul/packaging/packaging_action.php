<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("packaging"=>$_POST["packaging"],);
  
  
  
   
    $in = $db->insert("packaging",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("packaging","id",$_GET["id"]);
    break;
  case "up":
   $data = array("packaging"=>$_POST["packaging"],);
   
   
   

    
    $up = $db->update("packaging",$data,"id",$_POST["id"]);
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