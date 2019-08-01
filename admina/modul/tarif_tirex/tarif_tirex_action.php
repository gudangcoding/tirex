<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("kelompok"=>$_POST["kelompok"],"kota"=>$_POST["kota"],"kode_kota"=>$_POST["kode_kota"],"tarif"=>$_POST["tarif"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],);
  
  
  
   
    $in = $db->insert("tarif_tirex",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("tarif_tirex","id",$_GET["id"]);
    break;
  case "up":
   $data = array("kelompok"=>$_POST["kelompok"],"kota"=>$_POST["kota"],"kode_kota"=>$_POST["kode_kota"],"tarif"=>$_POST["tarif"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],);
   
   
   

    
    $up = $db->update("tarif_tirex",$data,"id",$_POST["id"]);
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