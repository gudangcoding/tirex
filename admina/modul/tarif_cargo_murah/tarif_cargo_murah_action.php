<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array("kelompok"=>$_POST["kelompok"],"kota_tujuan"=>$_POST["kota_tujuan"],"tarif"=>$_POST["tarif"],"harga_balik"=>$_POST["harga_balik"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],"keterangan"=>$_POST["keterangan"],);
  
  
  
   
    $in = $db->insert("tarif_cargo_murah",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("tarif_cargo_murah","id",$_GET["id"]);
    break;
  case "up":
   $data = array("kelompok"=>$_POST["kelompok"],"kota_tujuan"=>$_POST["kota_tujuan"],"tarif"=>$_POST["tarif"],"harga_balik"=>$_POST["harga_balik"],"minimal"=>$_POST["minimal"],"lead_time"=>$_POST["lead_time"],"keterangan"=>$_POST["keterangan"],);
   
   
   

    
    $up = $db->update("tarif_cargo_murah",$data,"id",$_POST["id"]);
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