<?php

	 error_reporting(E_ERROR | E_WARNING | E_PARSE);
	 session_start();
if(!isset($_SESSION['kadi'])){
 echo "<script>location.href='giris.php'</script>";

}?>
<tr>
    <td height="134"><a href="anasayfa.php"><img src="images/logo.jpg" width="312" height="122" /></a></td>
    <td><a href="futbol.php"><img src="images/futbolbuton.jpg" width="312" height="122" /></a></td>
    <td><a href="basketbol.php"><img src="images/basketbolbuton.jpg" width="312" height="122" /></a></td>
    <td><a href="voleybol.php"><img src="images/voleybolbuton.jpg" width="312" height="122" /></a></td>
  </tr>

 
