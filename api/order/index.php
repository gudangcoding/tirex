<?php
include"../koneksi.php";
$sql = "SELECT * FROM sys_users";
$query = $db->query($sql);
foreach($query as $row){
    $data[] = $row;
}
echo json_encode($data);
?>