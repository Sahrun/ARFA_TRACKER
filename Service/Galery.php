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
SaveGalery($connection);
break;
case 'gatDataTransctionOrder':
GetDataTransctionOrder($connection);
break;
default:
echo "service Not Found";
}
function SaveGalery($connection){
	$fileNames = upload($_FILES["Foto"]);
		$galeryname = $_POST['nama_galery'];
		$datenow = date('Y-m-d');
$Insert_Galery="INSERT INTO galery(upload_date,name_galery)
VALUES('$datenow','$galeryname')";
if (mysqli_query($connection, $Insert_Galery )) {
$nameprice = "";
$idGalery ="";
$IdGalery = mysqli_query($connection,"SELECT id_galary FROM galery ORDER BY id_galary DESC LIMIT 1");
$id_galary = mysqli_fetch_assoc($IdGalery);
$idGalery = $id_galary['id_galary'];
for ($i = 0; $i < count($fileNames); $i++) {
	$nameprice = $fileNames[$i];
	$Insert_Galery_Detail="INSERT INTO detailgalery(id_galery,foto)
VALUES($idGalery,'$nameprice')";
mysqli_query($connection, $Insert_Galery_Detail);
}
	echo json_encode(array('status'=>true));
} else {
echo "Error Insert Data" . mysqli_error($connection);
}
}
function Upload ($files){
$fileNames = array();
$namaFile = "";
foreach($files["tmp_name"] as $key=>$tmp_name){
if (0 < $files['error'][$key]) {
echo 'Error during file upload' . $files['error'][$key];
} else {
		$tempNamaFile = explode(".", $files["name"][$key]);
		$date = date('Ymdhis') ;
$namaFile = $date.mt_rand(0,99990) . $key . '.' . end($tempNamaFile);
if(move_uploaded_file($files["tmp_name"][$key], "../images/Galery/" .$namaFile)){
	array_push($fileNames, $namaFile);
}
}
}
return $fileNames;
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