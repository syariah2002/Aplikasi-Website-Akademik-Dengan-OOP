<?php
    // session start
    if(!empty($_SESSION)){ }else{ session_start(); }
    require 'model.php';
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Index</title>
		<!-- BOOTSTRAP 4-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <!-- DATATABLES BS 4-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- jQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <!-- DATATABLES BS 4-->
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <!-- BOOTSTRAP 4-->
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

	</head>
    <body style="background:#586df5;" >
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
                    <div class="alert alert-info">
                        <center><br><h2>Selamat Datang di Aplikasi Website Akademik</h2><br><br>
                        <img src="assets/img/hero-img.png" height="300" width="300" class="img-fluid hero-img" alt="" data-aos="zoom-in" data-aos-delay="150">
                        <br> <br> <h3>Maaf Anda Belum Dapat Akses, Silahkan Login Terlebih Dahulu !</h3></center>
                        <hr/>
                        <p><a href="login.php">Login Disini</a></p>
                    </div>
			    </div>
			</div>
		</div>
	</body>
</html>