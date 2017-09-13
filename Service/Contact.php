<?php
header('Content-type: application/json');
	@include '../Configuration/connection.php';
	$request = "";
	if(isset($_POST['proses'])){
		$request = $_POST['proses'];
	}
		if(isset($_GET['req'])){
		$request = $_GET['req'];	
	}
switch ($request) {
	case 'inputcontact':
			InsertContact($connection);
			break;
	case 'gatDataContact':
	        GetDataContact($connection);
	        break;
	default:
	echo "service Not Found";
}
function InsertContact($connection){
	$name = $_POST['name'];
	$email = $_POST['email'];
	$message = $_POST['message'];
	$insert_contact = "INSERT INTO contact(name,email,message)VALUES('$name','$email','$message')";
	if(mysqli_query($connection, $insert_contact)){
		echo json_encode(array('status'=>true));
	}else{
		echo "Error Insert Data" . mysqli_error($connection);
	}
}
function GetDataContact($connection){
	$GetContact="SELECT * FROM contact";
	$result = mysqli_query($connection, $GetContact);
		if ($result) {
			$data = array();
				while ($row = mysqli_fetch_array($result)) {
					$data[] = array(
						'id_contact' => $row['id_contact'],
						'name'=>$row['name'],
						'email'=>$row['email'],
						'message'=>$row['message'],);
				}
	
			echo json_encode($data);
		} else {
			echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}
?>