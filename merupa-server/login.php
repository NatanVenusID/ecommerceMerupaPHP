<?php
require "koneksi.php";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$response = array();
$user = $_POST['username'];
$pass = md5($_POST['password']);
// langkah 2
$cek = "SELECT * FROM tb_merupa WHERE username='$user' and
password='$pass'";
$result = mysqli_fetch_array(mysqli_query($connect, $cek));
if (isset($result)) {
$response['value'] = 1;
$response['message'] = "Login berhasil";
$response['username'] = $result['username'];
$response['password'] = $result['password'];
echo json_encode($response);
} else {
$response['value'] = 0;
$response['message'] = "Login gagal";
echo json_encode($response);
}
}
?>
