<?php
try{
	$vt=new PDO("mysql:host=127.0.0.1;dbname=spor;charset=utf8","root","");	
	
}catch(PDOException $hata){
	echo $hata->getMessage();
	}


?>