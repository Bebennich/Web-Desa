<?php 

$ambil = $koneksi->query("SELECT * FROM jadwal WHERE id_jadwal = '$_GET[id]' ");
$pecah = $ambil->fetch_assoc();
$fotoproduk = $pecah['foto'];

if (file_exists("../foto_produk/$fotoproduk")) {
	unlink("../foto_produk/$fotoproduk");
}

$koneksi->query("DELETE FROM jadwal WHERE id_jadwal='$_GET[id]'");

echo "<script>alert('produk terhapus');  </script>";
echo "<script>location='index.php?halaman=produk';  </script>";
