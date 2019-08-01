<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
header("Content-Type: application/json; charset=utf-8");
include"koneksi.php";
$username = $_POST['username'];
$password = md5($_POST['password']);
$post = json_decode(file_get_contents('php://input'), true);

$sql = "SELECT * FROM sys_users WHERE username='$username' AND password='$password'";
$query = $db->query($sql);
if($query->num_rows > 0){
    $data = $query->fetch_array();
    $photo = file_get_contents($data['photo']);
    $datamember = array(
        'id_member' => $data['id_member'],
        'nama' => $data['name'],
        'email' => $data['email'],
        'username' => $data['username'],
        'password' => $data['password'],
        'foto' => base64_encode($photo)
      );
      
      if($query) $result = json_encode(array('success'=>true, 'result'=>$datamember));
      else $result = json_encode(array('success'=>false, 'msg'=>'Login gagal'));
    }else{
        $result = json_encode(array('success'=>false, 'msg'=>'Akun tidak terdaftar'));
    }
    echo $result;

?>