<!DOCTYPE html>
<html class="no-js">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Arfa Tracker Slow</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
		<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
		<meta name="author" content="FREEHTML5.CO" />
		<meta property="og:title" content=""/>
		<meta property="og:image" content=""/>
		<meta property="og:url" content=""/>
		<meta property="og:site_name" content=""/>
		<meta property="og:description" content=""/>
		<meta name="twitter:title" content="" />
		<meta name="twitter:image" content="" />
		<meta name="twitter:url" content="" />
		<meta name="twitter:card" content="" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
		
		<!-- Animate.css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- Icomoon Icon Fonts-->
		<link rel="stylesheet" href="css/icomoon.css">
		<!-- Bootstrap  -->
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Superfish -->
		<link rel="stylesheet" href="css/superfish.css">
		<!-- Magnific Popup -->
		<link rel="stylesheet" href="css/magnific-popup.css">
		<!-- Date Picker -->
		<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
		<!-- CS Select -->
		<link rel="stylesheet" href="css/cs-select.css">
		<link rel="stylesheet" href="css/cs-skin-border.css">
		
		<link rel="stylesheet" href="css/style.css">
		<!-- Modernizr JS -->
		<script src="js/modernizr-2.6.2.min.js"></script>
	</head>
	<body>
		<div id="fh5co-wrapper">
			<div id="fh5co-page">
				<header id="fh5co-header-section" class="sticky-banner">
					<div class="container">
						<div class="nav-header">
							<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
							<h1 id="fh5co-logo"><img src="images/hiker.png" alt="Arfa logo" class="text-xs"><a href="index.html">arfa tracker</a></h1>
							<nav id="fh5co-menu-wrap" role="navigation">
								<ul class="sf-menu" id="fh5co-primary-menu">
									<li class="active"><a href="index.html">Home</a></li>
									<li><a href="profil.html">Profile</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>
				<!-- end:header-top -->
				
				<div class="">
					<div class="fh5co-overlay"></div>
				</div>
			</div>
			<div class="row" style="padding-left: 100px; padding-right: 100px; padding-top: 100px;">
				<div role="tabpanel" class="tab-pane active" id="packages">
					<div class="row">
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Name:</label>
							</div>
							<div class="input-field">
								<label ><?php echo $_POST['name']?></label>
								<input type="hidden" id="name" value="<?php echo $_POST['name']; ?>">
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Email:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['email']?></label>
								<input type="hidden" id="email" value="<?php echo $_POST['email']?>">
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Phone Number:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['no_telp'] ?></label>
								<input type="hidden" id="no_telp" value="<?php echo $_POST['no_telp'] ?>" >
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt" >
							<div class="input-field">
								<label for="from">Where Are You From:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['no_telp'] ?></label>
								<input type="hidden" id="from" value="<?php echo $_POST['no_telp'] ?>" >
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt" >
							<div class="input-field">
								<label for="from">Package:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['package'] ?></label>
								<input type="hidden" id="package" value="<?php echo $_POST['package'] ?>" >
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Number of people going on trek:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['numberpeople'] ?></label>
								<input type="hidden" id="numberpeople" value="<?php echo $_POST['numberpeople'] ?>">
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Pickup Location:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['pickup_location'] ?></label>
								<input type="hidden" id="pickup_location" value="<?php echo $_POST['pickup_location'] ?>">
							</div>
						</div>
						<div class="col-xxs-12 col-xs-6 mt">
							<div class="input-field">
								<label for="from">Date of Pickup:</label>
							</div>
							<div class="input-field">
								<label for="from"><?php echo $_POST['DatePickup'] ?></label>
								<input class="form-control" type="hidden" id="DatePickup"  value="<?php echo $_POST['DatePickup'] ?>">
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12">
								<button id="save" class="btn btn-primary btn-block">Booking</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="fh5co-destination" style="padding-left: 100px; padding-right: 100px; padding-top: 100px;">
				<div class="tour-fluid">
					<div class="row">
						<div class="col-md-12">
							
						</div>
						<footer>
							<div id="footer">
								<div class="container">
									<div class="row">
										<div class="col-md-6 col-md-offset-3 hidden-center">
											<p class="fh5co-social-icons">
												<a href="#"><i class="icon-twitter2"></i></a>
												<a href="#"><i class="icon-facebook2"></i></a>
												<a href="#"><i class="icon-instagram"></i></a>
												<a href="#"><i class="icon-dribbble2"></i></a>
												<a href="#"><i class="icon-youtube"></i></a>
											</p>
											<p>Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
										</div>
									</div>
								</div>
							</div>
						</footer>
						
					</div>
					<!-- END fh5co-page -->
				</div>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-text="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content" style="border-radius: 0px;">
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<script src="js/jquery.min.js"></script>
				<!-- jQuery Easing -->
				<script src="js/jquery.easing.1.3.js"></script>
				<!-- Bootstrap -->
				<script src="js/bootstrap.min.js"></script>
				<!-- Waypoints -->
				<script src="js/jquery.waypoints.min.js"></script>
				<script src="js/sticky.js"></script>
				<!-- Stellar -->
				<script src="js/jquery.stellar.min.js"></script>
				<!-- Superfish -->
				<script src="js/hoverIntent.js"></script>
				<script src="js/superfish.js"></script>
				<!-- Magnific Popup -->
				<script src="js/jquery.magnific-popup.min.js"></script>
				<script src="js/magnific-popup-options.js"></script>
				<!-- Date Picker -->
				<script src="js/bootstrap-datepicker.min.js"></script>
				<!-- CS Select -->
				<script src="js/classie.js"></script>
				<script src="js/selectFx.js"></script>
				
				<!-- Main JS -->
				<script src="js/main.js"></script>
				<!-- ACTION BOOKING-->
				<script type="text/javascript">
					$("#save").click(function(){
					create();
					});
					function create() {
						var name = $("#name").val();
						var email = $("#email").val();
						var no_telp = $("#no_telp").val();
						//var package = $("#package").val();
						var package = 1;
						var numberpeople = $("#numberpeople").val();
						var pickupLocation = $("#pickup_location").val();
						TemArray = $("#DatePickup").val().split("/");
						var datePickup = TemArray[2]+"-"+TemArray[1]+"-"+TemArray[0];
						var data ={proses: "input", name: name,email:email,no_telp:no_telp,package:package,numberpeople:numberpeople,pickupLocation:pickupLocation,datePickup:datePickup};
					$.ajax({
					url:"Service/TransactionInput.php", //the page containing php script
					type: "post", //request type,
					dataType: "json",
					data: data,
					success: function() {
					alert("Transaksi Berhasil");
					window.location.replace("index.html");
					},
					error: function() {
					alert("Terjadi Kesalahan Silahkan Ulangi!");
					}
					});
					}
					function GetNamePakage(id){
						$.ajax({
				url:"Service/TransactionInput.php", //the page containing php script
				type: "get", //request type,
				dataType: "json",
				data: {req:'GetNamePakage'},
				success: function(data) {
						console.log();
				},
				error: function() {
				alert("Terjadi Kesalahan");
				}
				});
						}
					</script>
				</body>
			</html>