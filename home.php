<?php 
session_start();
//koneksi ke database
include 'koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Nusa Trans Jaya</title>
	<link rel="icon" type="image/png" href="img/icon.png">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<?php include 'nav.php'; ?>
<!--main-->
<br><br><br>
<section class="produk wow fadeInUp">
	<h4 style="text-align: center;">Jadwal</h4> </h4><br><br>
	<div class="container">
		<form class="form-inline my-2 my-lg-0" action="pencarian.php" method="GET">
			<input class="form-control mr-sm-2" type="search" placeholder="Masukan Nama Kota..." aria-label="Search" name="keyword">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cari</button>
		</form><br>
		<div class="row">
			<?php $ambil = $koneksi->query("SELECT * FROM jadwal inner join kelas on jadwal.id_kelas = kelas.id_kelas"); ?>
			<?php while ($perproduk = $ambil-> fetch_assoc()){ ?>
			<div class="col-sm-4">
				<div class="card" style="margin-bottom: 10%; text-align:center;">
					<div class="card-body">
						<img src="img/<?php echo $perproduk['foto']; ?>" alt="" style="width: 300px; height:175px;">
						<hr>
						<h5 class="card-title"><?php echo $perproduk['asal']; ?> - <?php echo $perproduk['tujuan']; ?></h5>
						<p class="card-text"><?php echo $perproduk['tanggal']; ?></p>
						<p class="card-text"><?php echo $perproduk['nama_kelas']; ?></p>
						<p class="card-text">Rp. <?php echo number_format($perproduk['harga_produk']); ?></p>
						<a href="seat.php?id=<?php echo $perproduk['id_jadwal'] ?>" class="btn btn-beli">Beli Tiket</a>
					</div>
				</div>
			</div>
			<?php } ?>

		</div>
	</div>
</section>
<?php include 'footer.php'; ?>
</body>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script src="js/wow.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script>
		$('.carousel').carousel({
			interval: 2000
		})
	</script>
</html>