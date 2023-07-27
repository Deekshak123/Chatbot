<?php
$conn = mysqli_connect('127.0.0.2:3307','root','','chat');
if(!$conn){
	echo "Connection successfully" . mysqli_connect_error();
}
?>