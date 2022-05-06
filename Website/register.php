<?php
include "db.php";

$f_name = $_POST["f_name"];
$l_name = $_POST["l_name"];
$email = $_POST['email'];
$password = $_POST['password'];
$repassword = $_POST['repassword'];
$mobile = $_POST['mobile'];
$address1 = $_POST['address1'];
$name = "/^[a-zA-Z ]+$/";
$emailValidation = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9]+(\.[a-z]{2,4})$/";
$number = "/^[0-9]+$/";
//echo $f_name;

if (empty($f_name) || empty($l_name) || empty($email) || empty($password) || empty($repassword) || empty($mobile) || empty($address1) ) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Missing information</b>
    </div>
    ";
    exit();
} else {
// validate frist name
if (!preg_match($name,$f_name)) {
    echo "
    <div class='alert alert-warning'>
		<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
		<b>$f_name is not valid..!</b>
	</div>
    ";
    exit();
}
// validate last name
if (!preg_match($name,$l_name)) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>$l_name is not valid..!</b>
    </div
    ";
    exit();
}
// email validation
if (!preg_match($emailValidation,$email)) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>$email is not valid..!</b>
    </div>
    ";
    exit();
}
// password
if(strlen($password) < 9 ){
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>Password is weak</b>
    </div>
    ";
    exit();
}
if(strlen($repassword) < 9 ){
    echo "
	<div class='alert alert-warning'>
	<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
	<b>Password is weak</b>
    </div>
    ";
    exit();
}
// check password and repassword are match
if ($password != $repassword) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>Password is not the same</b>
    </div
    ";
}
//mobile number validation
if (!preg_match($number,$mobile)) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>Mobile number $mobile is not valid</b>
    </div>
    ";
    exit();
}
if(!(strlen($mobile) == 11)){
    echo "
	<div class='alert alert-warning'>
	<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
	<b>Contact Number Invalid</b>
	</div>
    ";
    exit();
}
// check existing email
$sql = "SELECT user_id FROM user_info WHERE email ='$email' LIMIT 1";
$check_query = mysqli_query($con ,$sql );
$count_email = mysqli_num_rows($check_query);
if ($count_email > 0 ) {
    echo "
    <div class='alert alert-danger'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <b>Email is already registered - Try with another email or use forgot password</b>
    </div>
    ";
    exit();
} else {
    $password = md5($password);
    $sql = "INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, 
		`password`, `mobile`, `address1`) 
		VALUES (NULL, '$f_name', '$l_name', '$email', 
        '$password', '$mobile', '$address1')";
    $run_query = mysqli_query($con,$sql);
    if ($run_query) {
        echo "
        <div class='alert alert-success'>
        <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
        <b>Registration Successful</b>
        </div>
        ";
    }
}
}

?>