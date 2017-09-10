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

    case 'input':
        InsertOrder($connection);
        break;
    case 'getPackage':
        GetPackage($connection);
        break;
    default:
     echo "service Not Found";
}

 function InsertOrder($connection){
	$name = $_POST['name'];
	$email = $_POST['email'];
	$noPhone = $_POST['no_telp'];
	$package = $_POST['package'];
	$numberpeople = $_POST['numberpeople'];
	$bank         = $_POST['banknumber'];
$Insert_Order="INSERT INTO order_package(name,email,no_telpon,id_package,number_people,no_rek)
VALUES('$name','$email',$noPhone,$package,$numberpeople,$bank)";
if (mysqli_query($connection, $Insert_Order )) {
	 echo json_encode(array('status'=>true));
		} else {
		echo "Error Insert Data" . mysqli_error($connection);
		}
    }

function GetPackage($connection){
$GetPackage="SELECT * FROM package";
$result = mysqli_query($connection, $GetPackage);
if ($result) {
	     $data = array();
	     while ($rw = mysqli_fetch_array($result)) {
	     	$data[] = array('id_package' => $rw['id_package'],'package_name'=>$rw['package_name']);
	     }
	     echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
    }

?>