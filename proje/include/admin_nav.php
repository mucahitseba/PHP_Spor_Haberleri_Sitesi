<?php 
error_reporting(E_ERROR | E_WARNING | E_PARSE);
session_start();
if(!isset($_SESSION["kadi"])){
	header("Location:giris.php");
	}

$kadi = $_SESSION["kadi"];
?>
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Paneli</title>




<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<style>

.yonetim_menu li {
	 float:left; 
	 margin-left: 0px;
     padding: 0;
	 list-style-type: none;
	 padding: 10px;
	 background-color: #f1f1f1;
	
 }
 .yonetim_menu li a {
    display: block;
    color: #039;
    padding: 8px 16px;
    text-decoration: none;
}
.yonetim_menu li a:hover {
    background-color: #0CF;
}

</style>
</head>
<body>
<center>

<div class="nav" style="
    margin-left: 500px;
">

 <div class="yonetim_menu"> 

<ul>
	<li><a href="yeni_haber.php">Yeni Haber Ekle</a> </li>
    <li><a href="sayfa_silme.php">Haber silme</a> </li>
      <li><a href="adminekle.php" >Admin Ekle </a> </li>
     <li><a href="cikis.php">Çıkış </a> </li>


</ul>

</br>
</div>

</div>

</center>
</body>

</html>