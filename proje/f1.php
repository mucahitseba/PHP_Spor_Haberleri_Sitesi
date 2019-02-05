<?php include("include/veritabaniayari.php") ;
error_reporting(E_ERROR | E_WARNING | E_PARSE); ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>MSpor Futbol</title>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>
<style>
 body {
        font-family: "Roboto", Helvetica, Arial, sans-serif;
        font-size: 18px;
        line-height: 1.42857143;
        color: #555555;
		
		}
h1{
	text-align:center;
	margin-top:-20px;
}
</style>
</head>

<body>
<table width="1251" height="1192" align="center" border="3">
<?php include("header.php")  ?>
  
  <tr>
    <td height="39" colspan="4"><img src="images/ff.JPG" width="1265" height="35" /></td>
  </tr>
  <tr>
    <td height="500" colspan="3">
     <?php


	$id = null;
	if ( isset($_GET['id'])) {
		$id = htmlentities($_REQUEST['id'], ENT_QUOTES);
	}?>

<?php

  $veri=$vt->query("select * from futbol where id=$id")->fetchAll(PDO::FETCH_ASSOC);

  foreach($veri as $row){
	  echo '</br><h1>';print_r($row["haberbaslik"]);echo '</h1>';
	  echo '<center><img src="';print_r($row["resimyolu"]);
	  echo '" alt="" style="width:900px;height:450px;margin-top: 10px;"></center>';
  }
  ?>
    </td>
    <td align="center"><img src="images/reklam.png" width="305" height="510" /></td>
    </td>
  </tr>
  <tr>
    <td colspan="3">
    <blockquote>
    <?php

  $veri=$vt->query("select * from futbol where id=$id")->fetchAll(PDO::FETCH_ASSOC);

  foreach($veri as $row){
	  echo '</br><p>';print_r($row["icerik"]);echo '</p>';
	  echo '</br><p style="text-align: -webkit-right;">';print_r($row["yazan"]);echo '</p>';
	  
  }
  ?>
  </blockquote>
    </td>
    
    <td><div style="font: normal 11px Arial; width: 298px; border: solid 1px #ccc; background: #fff; border-radius: 3px; box-shadow: 1px 1px 3px #ccc;">
    <h2 style="padding: 8px; margin: 0; height: 25px; border: 0; border-bottom: solid 1px #ccc;">
        <a href="http://www.trtspor.com/">
            <img src="http://s3.trtspor.com.tr/static/img/siteneEkle/logo_a.png" alt="TRT Spor Haberler" style="border: none 0;">
        </a>
    </h2>
    <iframe frameborder="0" width="298" height="282" src="http://www.trtspor.com/puandurumu-ekle/?lig=1&renk=a&baslik=1&resimler=1&a=3"></iframe>
    <div style="text-align: center;line-height: 23px;border-top: solid 1px #ccc; color: #666; margin-top: 5px;box-shadow: 0 -1px 3px #ccc;">
        <a style="text-decoration: none;color: #666; font: normal 11px Arial;" href="http://www.trtspor.com/puandurumu_ekle.html" target="_blank">Ayrıntılı Puan Durumu Tablosu</a>
    </div>
</div></td>
  </tr>
  <tr>
    <td height="89" colspan="4">
    
    
    <?php

  	$veri=$vt->query("select * from yorumlar where haberid=$id and habertipi='futbol'")->fetchAll(PDO::FETCH_ASSOC);

  foreach($veri as $row){
		
		echo "<br/> ";
		echo '<b>';print_r($row["kuladi"]); echo'</b>';
		echo "<br/>";
		 print_r($row["yorum"]); 

		echo "<hr>";
		
		}
  ?>
    <div class="icerik">
	<center>
 
	<form action="" method="post" enctype="multipart/form-data">
	<table cellpadding="5" cellspacing="5" >
	<tr>
   <td >
</td>
   </tr>
    <tr>
    	<td>Kullanici Adı</td>
        <td><input type="text" name="kadi" /></td>
    </tr>
     <tr>
    	<td>Yorum</td>
        <td><textarea rows="5" cols="40" name="yorum"></textarea> </td>
        
    </tr>
   
    <tr>   
    	<td><input type="submit" value="Gonder"  /></td>
    </tr>
    </table>
	</form>
  
    </center>
    



    </div>
    
    
    
    
    </td>
  </tr>
  <tr>
        <?php include("footer.php")  ?>
  </tr>


</table>
</body>
</html>
<?php
	if($_POST){


	$id = null;
	if ( isset($_GET['id'])) {
		$id = htmlentities($_REQUEST['id'], ENT_QUOTES);
	}
	$habertipi="futbol";
		$yazan=$_POST["kadi"];
		$yorum=$_POST["yorum"];

//veritabanına ekleme
			
		if(!empty($yazan) &&!empty($yorum)&&!empty($id)&&!empty($id)){	
			
				$kayit= $vt->prepare("insert into yorumlar set kuladi=?,yorum=?,haberid=?,habertipi=?");
				$kayit->execute(array($yazan,$yorum,$id,$habertipi));
				header("Location:futbol.php");
			
			
		}
	}else{
			
	}

	
?>