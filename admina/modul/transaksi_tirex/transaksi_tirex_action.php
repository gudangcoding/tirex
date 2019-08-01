<?php
session_start();
include "../../inc/config.php";
include "../../inc/koneksi.php";
session_check();
switch ($_GET["act"]) {
  case "in":
  
  $kode_dari = $_POST['dari'];
  $kode_tujuan = $_POST['tujuan'];
  $tanggal = date('Ymd');
  $sql = $conn->query("SELECT RIGHT(no_resi,6) AS nomor FROM pengiriman ORDER BY no_resi DESC");
    $num = $sql->num_rows;
    if($num <> 0)
       {
         $data = $sql->fetch_array();
         $kode = $data['nomor'] + 1;
       }else
       {
        $kode = 1;
       }
      //mulai bikin kode
       $bikin_kode = str_pad($kode, 6, "0", STR_PAD_LEFT);
       $no_resi = "TRX/$tanggal/$kode_dari/$kode_tujuan/$bikin_kode";
  
  $data = array(
    "no_resi"           => $no_resi,
    "nama_pengirim"     => $_POST["customer"],
    "tgl_pickup"        => $_POST["tgl_pickup"],
    "dari"              => $_POST["dari"],
    "alamat_pengambilan"=> $_POST["alamat_pengambilan"],
    "nama_penerima"     => $_POST["penerima"],
    "tujuan"            => $_POST["tujuan"],
    "layanan"           => "Reguler",
    "alamat_penerima"   => $_POST["alamat_tujuan"],
    "no_hp_penerima"    => $_POST["telepon"],
    "email_penerima"    => $_POST["email_penerima"],
    "petugas"           => $_SESSION['id_user'],
    "status_kiriman"    => "Order Diproser Oleh Marketing",
    "type"              => "Tirex",
    "harga"             => $_POST['harga'],
    "alamat_tujuan"     => $_POST['alamat_tujuan'],
    "catatan"           => $_POST['catatan'],
  );
  $in = $db->insert("pengiriman",$data);
  if ($in) {
    echo "sukses";
  }
  $token = rand(0,999999);
  // use wordwrap() if lines are longer than 70 characters
  $msg = wordwrap($msg,70);
  // send email
  mail("transaksi@cargomurah.id","Token Transaksi",$msg);

  $to = "neprianto@gmail.com";
  $subject = "Token Transaksi Tirex";
  $txt = "Token Transaksi\n Untuk Nomor Resi $no_resi Anda $token";
  $headers = "From: transaksi@cargomurah.id" . "\r\n";
  mail($to,$subject,$txt,$headers);
    break;

  case "delete":
    $db->delete("pengiriman","id",$_GET["id"]);
    break;

  case "up":
   $data = array(
    "nama_pengirim"     => $_POST["customer"],
    "tgl_pickup"        => $_POST["tgl_pickup"],
    "dari"              => $_POST["dari"],
    "alamat_pengambilan"=> $_POST["alamat_pengambilan"],
    "nama_penerima"     => $_POST["penerima"],
    "tujuan"            => $_POST["tujuan"],
    "layanan"           => "Reguler",
    "alamat_penerima"   => $_POST["alamat_tujuan"],
    "no_hp_penerima"    => $_POST["telepon"],
    "email_penerima"    => $_POST["email_penerima"],
    "petugas"           => $_SESSION['id_user'],
    "status_kiriman"    => "Order Diproser Oleh Marketing",
    "type"              => "Tirex",
    "harga"             => $_POST['harga'],
    "alamat_tujuan"     => $_POST['alamat_tujuan'],
    "catatan"           => $_POST['catatan'],
  );
   $up = $db->update("pengiriman",$data,"id",$_POST["id"]);
    redirect(base_admin()."index.php/transaksi-tirex/tambah");
  break;

    case 'tarif':
      $data=array();
     $tarif = $db->fetch_custom("SELECT tarif from tarif_cargo_murah where kode_kota='$_POST[kode_kota]'");
     foreach ($tarif as $a) {
       $data[] = $a;
     }
     echo json_encode($data);
      break;

  case "userbaru":
    $data = array(
      "first_name"=>$_POST["first_name"],
      "last_name"=>$_POST["last_name"],
      "username"=>$_POST["username"],
      "password"=>md5($_POST["password_baru"]),
      "email"=>$_POST["email"],
      "alamat"=>$_POST["alamat_customer"],
      "telepon"=>$_POST["telepon_customer"],
      "id_group"=>6,
      "date_created"=>date('Y-m-d')
    );

     if(isset($_POST["aktif"])=="on")
      {
        $aktif = array("aktif"=>"Y");
        $data=array_merge($data,$aktif);
      } else {
        $aktif = array("aktif"=>"N");
        $data=array_merge($data,$aktif);
      }
      $in = $db->insert("sys_users",$data);
      //echo "<script>alert('Customer Berhasil Ditambahkan Ke list, Silahkan Buat Order!');windows.location=".base_admin()."index.php/transaksi-tirex/tambah';</script>";
      redirect(base_admin()."index.php/transaksi-tirex/tambah");
  break;

  default:
    # code...
    break;
}

?>