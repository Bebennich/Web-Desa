<?php 
$datakategori = array();

$ambil = $koneksi -> query("SELECT * FROM kelas");

while($tiap = $ambil -> fetch_assoc()){
	$datakelas[] = $tiap;
}

 ?>
<h2>TambahProduk</h2>

<form action="" method="POST" enctype="multipart/form-data" >
	<div class="form-group">
		<label for="">Nama Kategori</label>
		<select name="id_kelas" class="form-control">
			<option>Pilih Kelas</option>
			<?php foreach ($datakelas as $key => $value): ?>
				
			<option value="<?php echo $value["id_kelas"] ?>"><?php echo $value["nama_kelas"] ?></option>
			<?php endforeach ?>
		</select>
	</div>
	<div class="form-group">
		<label for="">Kota Asal</label>
		<input type="text" class="form-control" name="asal">
	</div> 
	<div class="form-group">
		<label for="">Kota Tujuan</label>
		<input type="text" class="form-control" name="tujuan">
	</div> 
	<div class="form-group">
		<label for="">Tanggal</label>
		<input type="date" class="form-control" name="tanggal">
	</div> 
	<div class="form-group">
		<label for="">Harga (Rp.)</label>
		<input type="number" class="form-control" name="harga_produk">
	</div>
	<div class="custom-file">
	  	<label>Gambar</label>
	  	<input type="file" class="form-control" name="foto">
	</div>
	<div class="form-group">
		<label for="">Jam Berangkat</label>
		<input type="time" class="form-control" name="jam_berangkat" rows="10"></input>
	</div>
	<div class="form-group">
		<label for="">Jam Kedatangan</label>
		<input type="time" class="form-control" name="jam_datang">
	</div>
	<button type="" class="btn btn-primary" name="save">Simpan</button>
</form>

<?php 
	if (isset($_POST['save'])) {
		$nama = $_FILES['foto']['name'];
		$lokasi = $_FILES['foto']['tmp_name'];
		move_uploaded_file($lokasi, "../img/".$nama);
		$koneksi ->query("INSERT INTO jadwal (asal,tujuan,tanggal,harga_produk,foto,jam_berangkat,jam_datang,id_kelas)
		VALUES ('$_POST[asal]','$_POST[tujuan]','$_POST[tanggal]','$_POST[harga_produk]','$nama','$_POST[jam_berangkat]','$_POST[jam_datang]',$_POST[id_kelas])");

		echo "<div class='alert alert-info'>data tersimpan</div>";
		echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=produk'>";
	}
 ?>
