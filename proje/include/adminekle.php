<?php include("veritabaniayari.php") ?>
<?php include("admin_nav.php") ?>
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Paneli</title>




<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<body>
<div class="container" style="margin-top: 50px;">
<?php
if($_POST){
	$kadi=$_POST["ad"];
	$sifre=$_POST["sifre"];
	$sifret=$_POST["sifret"];
	if($sifre==$sifret){
	$kayit= $vt->prepare("insert into admin set kadi=?,sifre=?");
	$kayit->execute(array($kadi,$sifre));
			 if($kayit){
				echo "<font color='green' > basarı ile eklendi</font>";
			;
				
			 }else{
				 echo "<font color='red' > eklenmedi</font>"; }
	}
	}
?>

	<center>
 	
	<form action=" " method="post">
	<table cellpadding="5" cellspacing="5" >
    <tr>
    	<td>Kullanıcı Adı</td>
        <td><input type="text" name="ad" /></td>
    </tr>
     <tr>
    	<td>Şifre</td>
        <td><input type="text" name="sifre" /> </td>
    </tr>
    <tr>
    	<td>Şifre Tekrar</td>
        <td><input type="text" name="sifret" /> </td>
    </tr>
    
    	<td></td>
    	<td><input type="submit" value="Gonder"  /></td>
    </tr>
    </table>
	</form>
    
    </center>
    </div>
    </body>
   </html>