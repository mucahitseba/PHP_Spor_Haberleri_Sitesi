<?php include("veritabaniayari.php") ?>
<?php include("admin_nav.php") ?>
<?php


	$secim = null;
	if ( isset($_GET['secim'])) {
		$secim = htmlentities($_REQUEST['secim'], ENT_QUOTES);
		$_SESSION["secim"]=$secim;
	}?>

<?php
session_start();
if(!isset($_SESSION['kadi'])){
 echo "<script>location.href='giris.php'</script>";
}

	
	require 'veri.php';
	$id = 0;
	

	
	if ( isset($_GET['id'])) {
		$id = htmlentities($_REQUEST['id'], ENT_QUOTES);
	}
	
	if ( !empty($_POST)) {
		
		$id = $_POST['id'];
		
		
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql="";
		if($_SESSION["secim"]==1){
			$sql = "delete from futbol WHERE id = ?";
		}else if($_SESSION["secim"]==2){
			$sql = "delete from voleybol WHERE id = ?";
		}else if($_SESSION["secim"]==3){
			$sql = "delete from basketbol WHERE id = ?";
		}
		
		$q = $pdo->prepare($sql);
		$q->execute(array($id));
		Database::disconnect();
		header("Location: sayfa_silme.php");
		
	} 
?>

<style type="text/css">

</style>


<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Paneli</title>





<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
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
<div class="container">
<form class="form-horizontal" action="sayfa_silme.php?id=<?php echo $id;?>" method="post">
	    			  <input type="hidden" name="id" value="<?php echo $id;?>"/>
<?php	if(!empty($_GET['id'])==0):
		echo '';
		else:
		echo '<p class="alert alert-error">Silmek istediğinize eminmisiniz?</p>
					  <div class="form-actions">
						  <button type="submit">Evet</button>
						  <a href="sayfa_silme.php">Hayır</a>
						</div>';
		endif;
		
		

?>
					</form>    
                    
                    
    <div class="dropdown">
  <button class="dropbtn">Haber Türü</button>
  <div class="dropdown-content">
    <a href="?secim=1">Futbol</a>
    <a href="?secim=2">Voleybol</a>
    <a href="?secim=3">Basketbol</a>
  </div>
</div>
</br>                
<?php

	if($secim==1){
		$veri=$vt->query("select * from futbol")->fetchAll(PDO::FETCH_ASSOC);
	}else if($secim==2){
		$veri=$vt->query("select * from voleybol")->fetchAll(PDO::FETCH_ASSOC);
	}else if($secim==3){
		$veri=$vt->query("select * from basketbol")->fetchAll(PDO::FETCH_ASSOC);
	}
	if($secim<4 && $secim>0)
	foreach($veri as $row){
		print_r($row["haberbaslik"]);
		echo "<br/> ";
		print_r($row["icerik"]);
		echo "<br/>";
		print_r($row["yazan"]);
		echo "<br/>";
		echo '<td><img src="../'.$row["resimyolu"].'" width="75" height="75"/></td>';
		echo '<td>'.$row["aciklama"].'</td>';
		echo "<br/>";
		
		echo '</tr>';
		echo '</table>';
		echo '<a href="sayfa_silme.php?id='.$row["id"].'">sil</a>';
		echo "<hr>";
		
		
		}

?>
</div>
  </body>
</html>