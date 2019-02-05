<?php require_once("include/veritabaniayari.php")?>
<?php include("header.php")  ?>
<html>
<head>
</head>
<body>
<?php
$alınan=@$_GET["sayfa"];
if($alınan=="anasayfa")
{
	include("anasayfa.php");
	}
	else if($alınan=="futbol")
{
include("futbol.php");
}
	?>
	
	</body>
	</html>
	