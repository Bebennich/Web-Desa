<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jadwal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">
    <style>
        body {
            padding: 20px;
        }

        .container-fluid {
            padding: 0;
        }

        .table-responsive {
            width: 100%;
            margin: 0 auto;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <h2>Jadwal</h2>
        <a href="index.php?halaman=tambahproduk" class="btn btn-primary mb-3" title="">Tambah Jadwal</a>
        <div class="table-responsive">
            <table id="dataTable" class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Kelas</th>
                        <th>Asal</th>
                        <th>Tujuan</th>
						<th>Tanggal</th>
                        <th>Harga</th>
                        <th>Gambar</th>
                        <th>Jam Berangkat</th>
                        <th>Jam Datang</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $nomor=1; ?>
                    <?php $ambil = $koneksi->query("SELECT * FROM jadwal LEFT JOIN kelas ON jadwal.id_kelas = kelas.id_kelas"); ?>
                    <?php while($pecah = $ambil -> fetch_assoc()){ ?>
                    <tr>
                        <td><?php echo $nomor; ?></td>
                        <td><?php echo $pecah ['nama_kelas']; ?></td>
                        <td><?php echo $pecah ['asal']; ?></td>
                        <td><?php echo $pecah ['tujuan']; ?></td>
						<td><?php echo $pecah ['tanggal']; ?></td>
                        <td><?php echo $pecah ['harga_produk']; ?></td>
                        <td>
                            <img src="../img/<?php echo $pecah ['foto']; ?>" width="100">
                        </td>
                        <td><?php echo $pecah ['jam_berangkat']; ?></td>
                        <td><?php echo $pecah ['jam_datang']; ?></td>
                        <td>
                            <a href="index.php?halaman=ubahproduk&id=<?php echo $pecah['id_jadwal']; ?>" class="btn btn-warning" title="">Edit</a>
                            <a href="index.php?halaman=hapusproduk&id=<?php echo $pecah['id_jadwal']; ?>" class="btn btn-danger" title="">Delete</a>
                        </td>
                    </tr>
                    <?php $nomor++; ?>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script>
        $(document).ready(function() {
            $('#dataTable').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
                    'pdfHtml5'
                ]
            });
        });
    </script>
</body>

</html>
