<?php include("admin_nav.php") ?>
<?php 
session_start();
if(!isset($_SESSION["kadi"])){
	header("Location:giris.php");
	}

$kadi = $_SESSION["kadi"];
$yazan=$_SESSION["yazan"];
?>
	  
<?php @include("veritabaniayari.php")?>
<?php


	$secim = null;
	if ( isset($_GET['secim'])) {
		$secim = htmlentities($_REQUEST['secim'], ENT_QUOTES);
	}?>
<!doctype html>
<html>
<head>
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
</head>
<body>
<div>
<?php
	if($_POST){
		$yazan=$_POST["yazan"];
		$baslik=$_POST["baslik"];
		$icerik=$_POST["icerik"];
		
		
		
		//dosya ekleme
		if(isset($_FILES['dosya'])) {
			if($_FILES['dosya']['name']){
			  	$resimyolu="images/".$_FILES['dosya']['name'];
				copy($_FILES['dosya']['tmp_name'],'../images/'.$_FILES['dosya']['name']);
			}
		}else {
			echo 'Lütfen bir resim gönderin';
			}

//veritabanına ekleme
			
		if(!empty($yazan) &&!empty($baslik)&&!empty($icerik)){	
			if($secim==1){
				$kayit= $vt->prepare("insert into futbol set haberbaslik=?,resimyolu=?,icerik=?,yazan=?");
				$kayit->execute(array($baslik,$resimyolu,$icerik,$yazan));
				
				header("Location:yeni_haber.php");
			}else if($secim==2){
				$kayit= $vt->prepare("insert into voleybol set haberbaslik=?,resimyolu=?,icerik=?,yazan=?");
				$kayit->execute(array($baslik,$resimyolu,$icerik,$yazan));
				header("Location:yeni_haber.php");
							
			}else if($secim==3){
				$kayit= $vt->prepare("insert into basketbol set haberbaslik=?,resimyolu=?,icerik=?,yazan=?");
				$kayit->execute(array($baslik,$resimyolu,$icerik,$yazan));
				header("Location:yeni_haber.php");
			}
			
		}
	}else{
			
		

	
?>
	<div class="icerik">
	<center>
 
	<form action="" method="post" enctype="multipart/form-data">
	<table cellpadding="5" cellspacing="5" >
	<tr>
   <td ><div class="dropdown">
  <button class="dropbtn">Haber Türü</button>
  <div class="dropdown-content">
    <a href="?secim=1">Futbol</a>
    <a href="?secim=2">Voleybol</a>
    <a href="?secim=3">Basketbol</a>
  </div>
</div>
</td>
   </tr>
    <tr>
    	<td>Ad Soyad</td>
        <td><input type="text" name="yazan" value="<?php echo $yazan ?>" /></td>
    </tr>
     <tr>
    	<td>Başlık</td>
        <td><input type="text" name="baslik" /> </td>
    </tr>
     <tr>
    	<td>İçerik</td>
        <td><textarea rows="5" cols="40" name="icerik"></textarea> </td>
        
    </tr>
   

   <td><td><input type="file" name="dosya"/></td></td>
    <tr>   
    	<td><input type="submit" value="Gonder"  /></td>
    </tr>
    </table>
	</form>
  
    </center>
    



    </div>
    </div>
    <?php }?>
</body>
</html>
