<h2>Detail Pembelian</h2>

<?php 
$ambil = $koneksi->query("SELECT * FROM pembelian JOIN pelanggan ON pembelian.id_pelanggan = pelanggan.id_pelanggan WHERE pembelian.id_pembelian = '$_GET[id]'");
$detail = $ambil -> fetch_assoc();
 ?>

<!--<pre>
 	<?php print_r($detail); ?>
 </pre>
-->



<div class="row">
	<div class="col-md-4">
		<h3>Pembelian</h3>
		<p>
			<?php echo $detail ['tanggal_pembelian']; ?><br>
			Rp. <?php echo number_format($detail ['total_pembelian']); ?><br>
			Status Pembelian : <?php echo $detail ['status_pembelian']; ?><br>
		</p>

	</div>
	<div class="col-md-4">
		<h3>Pelanggan</h3>
		<strong><?php echo $detail ['nama_pelanggan']; ?></strong>
		<p>
			<?php echo $detail ['telepon']; ?><br>
			<?php echo $detail ['email_pelanggan']; ?><br>
		</p>
	</div>
</div>

 <table class="table table-bordered">
 	<thead>
 		<tr>
 			<th>no</th>
 			<th>nama produk</th>
 			<th>harga</th>
 			<th>jumlah</th>
 			<th>subtotal</th>
 		</tr>
 	</thead>
 	<tbody>
 		<?php $nomor=1; ?>
 		<?php $ambil = $koneksi->query("SELECT * FROM pembelian_produk JOIN jadwal ON pembelian_produk.id_jadwal = jadwal.id_jadwal WHERE pembelian_produk.id_pembelian = '$_GET[id]'") ?>
 		<?php while ($pecah = $ambil -> fetch_assoc()){ ?>
 		<tr>
 			<td><?php echo $nomor; ?></td>
 			<td><?php echo $pecah['asal']; ?></td>
 			<td>Rp. <?php echo number_format($pecah['harga_produk']) ; ?></td>
 			<td><?php echo $pecah['jumlah']; ?></td>
 			<td>
 				Rp. <?php echo number_format($pecah['harga_produk'] * $pecah['jumlah']) ; ?>
 			</td>
 		</tr>
 		<?php $nomor++; ?>
 		<?php } ?>
 	</tbody>
 </table>