<?php


	include("include/veritabaniayari.php");
session_start();
include("header.php");
	if(isset($_POST["kadi"])){
		$kadi=$_POST["kadi"];
	$sifre=$_POST["sifre"]; 
      $bul = $vt->prepare("select * from kullanicikayit WHERE kadi =? and sifre=? ");
      $bul->execute(array("$kadi" , "$sifre" )); 
	  $bul->fetch();
	
      if($bul->rowCount() > 0){
		  echo "giriş başarılı!";
		  $_SESSION["durum"]=1;
		  $_SESSION["kadi"]=$kadi;
		  $_SESSION["sifre"]=$sifre;
		  
      }
      else{
		  echo "giriş başarısız";
		 header("Location:kullanicigirisi.php");
		
	  }
	}else{
		header("Location:kullanicigirisi.php");
	}

 	
	  ?>
      <?php
	 if(isset($_SESSION["durum"])){
		 echo 'Hoşgeldin '. $_SESSION["kadi"];
	 }
	 
	 
		 ?>
		 <a href="anasayfa.php">anasayfa</a>