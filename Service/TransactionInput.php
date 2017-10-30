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
GetPackage($connection,$_GET['Idfrom']);
break;
case 'gatDataTransctionOrder':
GetDataTransctionOrder($connection);
break;
case 'GetNamePakage':
	GetDataNamePakage($connection,$_GET['id']);
	break;
case 'getDetPackage':
	GetDetPackage($connection,$_GET['Idpackage']);
	break;
case 'GetTotalPricePakage':
	GetTotalPricePakage($connection,$_GET['id'],$_GET['person']);
	break;
default:
echo "service Not Found";
}
function InsertOrder($connection){
	@include '../email.php';
	$name = $_GET['name'];
	$email = $_GET['email'];
	$noPhone = $_GET['no_telp'];
	$package = $_GET['package'];
	$numberpeople = $_GET['numberpeople'];
	$pickupLocation  = $_GET['pickupLocation'];
	$datePickup = $_GET['datePickup'];
	$datenow = date('Y-m-d');
	$from = $_GET['from'];
	$totalBillForm = $_GET['totalBillForm'];
$Insert_Order="INSERT INTO order_package(name,email,no_telpon,id_package,number_people,pickup_location,date_pickup,date_order,total_price,islocal)
VALUES('$name','$email',$noPhone,$package,$numberpeople,'$pickupLocation','$datePickup','$datenow',$totalBillForm,$from)";
if (mysqli_query($connection, $Insert_Order )) {
	$message = '<html><body>';
	$message .= '<table rules="all" style="border-color: #666;" cellpadding="10">';
	$message .= "<tr style='background: #eee;'><td><strong>Name:</strong> </td><td>" .$name. "</td></tr>";
	$message .= "<tr><td><strong>Email:</strong> </td><td>" .$email. "</td></tr>";
	$message .= "<tr><td><strong>Phone Number:</strong> </td><td>" .$noPhone. "</td></tr>";
	$message .= "<tr><td><strong>Where Are You From:</strong> </td><td>" .$from. "</td></tr>";
	$message .= "<tr><td><strong>Package:</strong> </td><td>" .$package. "</td></tr>";
	$message .= "<tr><td><strong>Number of people going on trek:</strong> </td><td>" .$numberpeople. "</td></tr>";
	$message .= "<tr><td><strong>Pickup Location:</strong> </td><td>" .$pickupLocation. "</td></tr>";
	$message .= "<tr><td><strong>Date of Pickup:</strong> </td><td>" .$datenow. "</td></tr>";
	$message .= "<tr><td><strong>Total Tagihan:</strong> </td><td>" .$totalBillForm. "</td></tr>";
	$message .= "</table>";
	$message .= "</body></html>";
	if(SendEmailToClient($email,"ARFA TRACKER","Your Detail Order",$message)){
		if(SendEmailToAdmin("sahrunnawawi995@gmail.com","ARFA TRACKER","Your Order","Pesanan Anda ...")){
			echo json_encode(array('status'=>true));
	}
	}
		} else {
		echo "Error Insert Data" . mysqli_error($connection);
		}
}
function GetDetPackage($connection,$Idpackage){
$GetDetPackage="SELECT * FROM  detailpackage WHERE id_package = $Idpackage";
$result = mysqli_query($connection, $GetDetPackage);
if ($result) {
	$data = array();
	while ($rw = mysqli_fetch_array($result)) {
		$data[] = array('id_detail_package' => $rw['id_detail_package'],'package_name'=>$rw['package_name']);
	}
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}
function GetPackage($connection,$Idfrom){
$GetPackage="SELECT * FROM  package WHERE islocal = $Idfrom";
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
function GetDataTransctionOrder($connection){
$GetTransaction="SELECT o.id_order,
					o.name,
					o.email ,
					o.no_telpon ,
					p.package_name,
					o.number_people,
					o.pickup_location,
					o.date_pickup,
					o.date_order
FROM order_package o
INNER JOIN package p
ON o.id_package = p.id_package";
$result = mysqli_query($connection, $GetTransaction);
if ($result) {
	$data = array();
	while ($rw = mysqli_fetch_array($result)) {
		$data[] = array('id_order' => $rw['id_order'],
			'name'=>$rw['name'],
			'email'=>$rw['email'],
			'no_telpon'=>$rw['no_telpon'],
			'package_name'=>$rw['package_name'],
			'number_people'=>$rw['number_people'],
			'pickup_location'=>$rw['pickup_location'],
			'date_pickup'=>$rw['date_pickup'],
			'date_order'=>$rw['date_order'],);
	}
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}
function GetDataNamePakage($connection,$id){
	$GetnameDetailPackage="SELECT package_name,price FROM detailpackage where id_detail_package = $id";
$result = mysqli_query($connection, $GetnameDetailPackage);
if ($result) {
	$data = array();
	while ($rw = mysqli_fetch_array($result)) {
		$data = array('package_name' => $rw['package_name'],'price'=>$rw['price']);
	}
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}
function GetTotalPricePakage($connection,$id,$person){
	$totalPrice =0;
	$Package="SELECT price FROM detailpackage where id_detail_package = $id";
$result = mysqli_query($connection, $Package);
if ($result) {
	$data = array();
	while ($rw = mysqli_fetch_array($result)) {
		$totalPrice = $rw['price'] * $person;
		$data = array('totalPrice' => $totalPrice);
	}
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}
?>
