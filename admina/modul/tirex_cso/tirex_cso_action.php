<?php
session_start();
include "../../inc/config.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  
  
  $data = array(
    "no_resi"=>$_POST["no_resi"],
    "jenis_barang"=>$_POST["jenis_barang"],
    "deskripsi_barang"=>$_POST["deskripsi_barang"],
    "jumlah"=>$_POST["jumlah"],
    "pajang"=>$_POST["pajang"],
    "lebar"=>$_POST["lebar"],
    "tinggi"=>$_POST["tinggi"],
    "volume"=>$_POST["volume"],
    "berat"=>$_POST["berat"],
    "harga"=>$_POST["harga"],
    "sub_total"=>$_POST["sub_total"],
  );
  
  $in = $db->insert("pengiriman_detail",$data);
    
    if ($in=true) {
      echo "good";
    } else {
      return false;
    }
    break;
  case "delete":
    
    
    
    $db->delete("pengiriman_detail","",$_GET["id"]);
    break;
    
  case "up":
   $data = array(
    "driver"=>$_POST["ops_lapangan"],
  );
   
   $up = $db->update("pengiriman",$data,"no_resi",$_POST["no_resi"]);
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