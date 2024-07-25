<h2>Edit Produk</h2>

<?php 

$ambil = $koneksi->query("SELECT * FROM jadwal WHERE id_jadwal='$_GET[id]'");
$pecah = $ambil -> fetch_assoc();

 ?>

 <?php 
$datakategori = array();

$ambil = $koneksi -> query("SELECT * FROM kelas");

while($tiap = $ambil -> fetch_assoc()){
	$datakategori[] = $tiap;
}

 ?>

 <form action="" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
 	<div class="form-group">
		<label for="">Nama Kelas</label>
		<select name="id_kelas" class="form-control">
			<option>Pilih Kelas</option>
			<?php foreach ($datakategori as $key => $value): ?>
				
			<option value="<?php echo $value["id_kelas"] ?>" <?php if($pecah["id_kelas"]==$value["id_kelas"]){ echo "selected"; } ?>  >
				<?php echo $value["nama_kelas"] ?>
				
			</option>
			<?php endforeach ?>
		</select>
	</div>
 	<div class="form-group">
		<label for="">Asal</label>
		<input type="text" class="form-control" name="asal" value="<?php echo $pecah ['asal']; ?>">
	</div>
	<div class="form-group">
		<label for="">Tujuan</label>
		<input type="text" class="form-control" name="tujuan" value="<?php echo $pecah ['tujuan']; ?>">
	</div>
	<div class="form-group">
		<label for="">Tanggal</label>
		<input type="date" class="form-control" name="tanggal" value="<?php echo $pecah ['tanggal']; ?>">
	</div>
	<div class="form-group">
		<label for="">Harga (Rp.)</label>
		<input type="number" class="form-control" name="harga" value="<?php echo $pecah ['harga_produk']; ?>">
	</div>
	<div class="form-group">
	  	<img src="../img/<?php echo $pecah ['foto'];;  ?>" style="width:20%;">
	</div>
	<div class="form-group">
	  	<label>Ganti Foto</label>
	  	<input type="file" class="form-control" name="foto">
	</div>
	<div class="form-group">
		<label for="">Jam Berangkat</label>
		<input type="time" class="form-control" name="jam_berangkat" value="<?php echo $pecah ['jam_berangkat']; ?>">
	</div>
	<div class="form-group">
		<label for="">Jam Kedatangan</label>
		<input type="time" class="form-control" name="jam_datang" value="<?php echo $pecah ['jam_datang']; ?>">
	</div>
	
	<button type="" class="btn btn-warning" name="ubah">Ubah</button>
 </form>

 <?php 
if (isset($_POST['ubah'])) {
	$namafoto = $_FILES['foto']['name'];
	$lokasifoto = $_FILES['foto']['tmp_name'];
	if (!empty($lokasifoto)) {
		move_uploaded_file($lokasifoto, "../img/$namafoto");

		$koneksi->query("UPDATE jadwal SET asal='$_POST[asal]',
			tujuan='$_POST[tujuan]',
			tanggal='$_POST[tanggal]',
			harga_produk = '$_POST[harga]',
			foto ='$namafoto',
			id_kelas = '$_POST[id_kelas]', 
			jam_berangkat = '$_POST[jam_berangkat]', 
			jam_datang = '$_POST[jam_datang]' 
			WHERE id_jadwal = '$_GET[id]' ");
	}else{
		$koneksi->query("UPDATE jadwal SET asal='$_POST[asal]',
			tujuan='$_POST[tujuan]',
			tanggal='$_POST[tanggal]',
			harga_produk = '$_POST[harga]',
			foto ='$namafoto',
			id_kelas = '$_POST[id_kelas]',
			jam_berangkat = '$_POST[jam_berangkat]', 
			jam_datang = '$_POST[jam_datang]'  
			WHERE id_jadwal = '$_GET[id]' ");
	}
	echo "<script>alert('data produk telah diubah');</script>";
	echo "<script>location='index.php?halaman=produk';</script>";
}
  ?>