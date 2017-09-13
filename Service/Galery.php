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
case 'GetDataGalery':
GetDataGalery($connection);
break;
case 'GetDataGaleryById':
GetDataGaleryById($connection,$_GET['id']);
break;
case 'update':
	UpdateGalery($connection);
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

function UpdateGalery($connection){
		$galeryname = $_POST['nama_galery'];
		$galeryId = $_POST['idGalery'];
        $Update_Galery="UPDATE  galery set name_galery ='$galeryname' WHERE id_galary=$galeryId";
        if (mysqli_query($connection, $Update_Galery )) {
		if(count($_FILES["Foto"]['name']) > 0 && $_FILES["Foto"]['name'][0] !== ""){
		    $fileNames = upload($_FILES["Foto"]);
			$nameprice = "";
			$DeleteGaleryDetail = mysqli_query($connection,"DELETE FROM detailgalery WHERE id_galery = $galeryId");
			if($DeleteGaleryDetail){
			for ($i = 0; $i < count($fileNames); $i++) {
				$nameprice = $fileNames[$i];
				$Insert_Galery_Detail="INSERT INTO detailgalery(id_galery,foto)
			VALUES($galeryId,'$nameprice')";
			mysqli_query($connection, $Insert_Galery_Detail);
			}
            }
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

function GetDataGalery($connection){
$result = mysqli_query($connection, "SELECT * FROM galery");
if ($result) {
	$data = array();
	while ($rw = mysqli_fetch_array($result)) {
		$data[] = array('id_galary' => $rw['id_galary'],
			'upload_date'=>$rw['upload_date'],
			'name_galery'=>$rw['name_galery']);
	}
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}

function GetDataGaleryById($connection,$id){
	$data = array();
	$GaleryArray = array();
	$detailGaleryArray = array();
    $Galery = mysqli_query($connection, "SELECT * FROM galery  WHERE id_galary=$id");
	if($Galery){
	while ($rw = mysqli_fetch_array($Galery)) {
		$GaleryArray = array('id_galary' => $rw['id_galary'],
			'upload_date'=>$rw['upload_date'],
			'name_galery'=>$rw['name_galery']);
	}
	 $GaleryDitail = mysqli_query($connection, "SELECT * FROM detailgalery WHERE id_galery = $id");
	if($GaleryDitail){
         while ($rw = mysqli_fetch_array($GaleryDitail)) {
	 	$detailGaleryArray[] = array('foto' => $rw['foto']);
	}
	 }
	$data= array('galery' => $GaleryArray,'detailgalery' => $detailGaleryArray);
	echo json_encode($data);
		} else {
		echo "Terjadi Kesalahan" . mysqli_error($connection);
		}
}


?>