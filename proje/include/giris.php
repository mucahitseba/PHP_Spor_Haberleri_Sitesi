<?php include("veritabaniayari.php") ?>
<head>
<style>
p.thick{font-weight:bold;}
a{
	color:black;
	} 
input[type=text] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}
input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #555;
}
input[type=password]:focus {
    border: 3px solid #555;
}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
p	{font-size: 20px;}
	
.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}
.button1:hover{
background-color: #4CAF50;
color:white;
}
</style>
</head>
<body>

	
 <div align="center">
  <table width="500" height="100" border="0" align="center">
   

      

 	<form action="admin.php" method="post">
    <tr>
      <td><label for="kadi"><p>Kullanıcı Adı</p></label></td>
      <td><input type="text"  name="kadi" ></td>
  </tr>
  <tr>
     <td> <label for="sifre"><p>Şifre</p></label></td>
      <td><input type="password"  name="sifre"></td>
  </tr>
  <tr>
  <td></td>
<td><button type="submit" class="button button1">Giriş</button></td>
</tr>


      </form>
  
  </table>
</div>
	</body>
	



