<?php include("include/veritabaniayari.php") ?>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Başlıksız Belge</title>
</head>

<body>

<div class="container" style="margin-top: 50px;">


	<center>
 	
	<form action=" " method="post">
	<table cellpadding="5" cellspacing="5" >
    <tr>
    	<td>Ad</td>
        <td><input type="text" name="ad" /></td>
    </tr>
	<tr>
    	<td>Soyad</td>
        <td><input type="text" name="soyad" /></td>
    </tr>
	<tr>
    	<td>E-Mail</td>
        <td><input type="text" name="email" /></td>
    </tr>
	<tr>
    	<td>Kullanıcı Adı</td>
        <td><input type="text" name="kadi" /></td>
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


<?php
if($_POST){
	$ad=$_POST["ad"];
	$soyad=$_POST["soyad"];
	$email=$_POST["email"];
	$kadi=$_POST["kadi"];
	$sifre=$_POST["sifre"];
	$sifret=$_POST["sifret"];
	if($sifre==$sifret){
	$kayit=$vt->prepare("insert into kullanicikayit set ad=?,soyad=?,email=?,kadi=?,sifre=?");
	$kayit->execute(array($ad,$soyad,$email,$kadi,$sifre));
			 if($kayit){
				echo "<font color='green' > KAYIT BAŞARILI</font>";
				header("refresh:10;url=anasayfa.php");
die('10 sn sonra yönlendirileceksiniz. Beklememek için <a href="anasayfa.php">tıklayın</a>');

			;
				
			 }else{
				 echo "<font color='red' > KAYIT BAŞARISIZ</font>"; }
	}
	}
?>