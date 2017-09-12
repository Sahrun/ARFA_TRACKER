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
    case 'gatDataTransctionOrder':
        GetDataTransctionOrder($connection);
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
	$pickupLocation         = $_POST['pickupLocation'];
	$datePickup = $_POST['datePickup'];
	$datenow = date('Y-m-d');
$Insert_Order="INSERT INTO order_package(name,email,no_telpon,id_package,number_people,pickup_location,date_pickup,date_order)
VALUES('$name','$email',$noPhone,$package,$numberpeople,'$pickupLocation','$datePickup','$datenow')";
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
?>