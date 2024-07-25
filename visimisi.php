<?php 
session_start();
//koneksi ke database
include 'koneksi.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Visi & Misi | Desa Panekan</title>
	<link rel="icon" type="image/png" href="img/logodesa.png">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body id="page-top">
<?php include 'nav.php'; ?>
<!--main-->
<section id="visimisi"class="visimisi-section">
    <div class="container px-4">
    <h2>Visi & Misi</h2><br><br><br>
        <div class="row gx-5">
            <div class="col">
                <h2>Visi</h2>
                <hr>
                <p>Mewujudkan Desa Panekan yang berdaya, mandiri, dan sejahtera dengan masyarakat yang cerdas, produktif, dan 
                    harmonis melalui pengembangan ekonomi kreatif, peningkatan kualitas pendidikan, serta pelestarian budaya 
                    dan lingkungan. Menjadi desa yang inovatif dan berkelanjutan dengan pemanfaatan teknologi dan partisipasi 
                    aktif masyarakat dalam menciptakan lingkungan yang ramah, aman, dan inklusif untuk meningkatkan kesejahteraan 
                    bersama.</p>
            </div>
            <div class="col">
                <h2>Misi</h2>
                <hr>
                <ul class="list-group">
                    <li class="list-group-item">Mewujudkan sumber daya yang sehat fisik, mental dan sosial serta memiliki produktivitas yang optimal</li>
                    <li class="list-group-item">Menumbuhkan sikap atau perilaku yang mencerminkan taat dan patuh pada norma-norma yang berlaku</li>
                    <li class="list-group-item">Memiliki kemampuan dan kecakapan untuk berperilaku hidup sehat</li>
                    <li class="list-group-item">Memiliki daya tangkal terhadap pengaruh luar</li>
                    <li class="list-group-item">Meningkatkan mutu pendidikan dan prestasi belajar dengan berperilaku hidup sehat</li>
                </ul>
            </div>
        </div>
    </div>
</section>
<?php include 'footer.php'; ?>
</body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</html>