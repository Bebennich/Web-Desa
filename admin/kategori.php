<?php 
$semuadata = array();
$ambil = $koneksi->query("SELECT * FROM kelas");
while ($tiap = $ambil -> fetch_assoc()){
	$semuadata[] = $tiap;
}

 ?>
<h3>Data Kelas</h3>
<hr>

<table class="table table-bordered">
	
	<thead>
		<tr>
			<th>No</th>
			<th>Kelas</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($semuadata as $key => $value): ?>
			
		<tr>
			<td> <?php echo $key+1 ?></td>
			<td> <?php echo $value["nama_kelas"] ?> </td>
			<td colspan="2">
				<a href="index.php?halaman=ubahproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-warning" title="">Edit</a>
				<a href="index.php?halaman=hapusproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-danger" title="">Delete</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>