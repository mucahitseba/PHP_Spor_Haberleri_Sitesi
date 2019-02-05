<?php include("admin_nav.php") ?>
<div class="container">
<?php
	include("veritabaniayari.php");
	session_start();

 	$kadi=$_POST["kadi"];
	$sifre=$_POST["sifre"]; 
      $bul = $vt->prepare("select * from admin WHERE kadi =? and sifre=? ");
      $bul->execute(array("$kadi" , "$sifre" )); 
	  $bul->fetch();
	
      if($bul->rowCount() > 0){
		  echo "</br><p>giriş başarılı!</p>";
		  $_SESSION["durum"]=1;
		  $_SESSION["kadi"]=$kadi;
		  $_SESSION["sifre"]=$sifre;
		  foreach($bul as $row)
		  {
			  $_SESSION["yazan"]=$bul["yazan"];
			  break;
		  }
		  
      }
      else{
		 header("Location:giris.php");
	  }
	  ?>
      <?php
	 if(isset($_SESSION["durum"])){
		 echo 'Hoşgeldin '. $_SESSION["kadi"];
	 }
	 
	 
		 ?>
 </div>		
	