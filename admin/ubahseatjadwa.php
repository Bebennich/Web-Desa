<?php
session_start();
// Database connection
$koneksi = new mysqli("localhost", "root", "", "atol2");

// Mengembalikan semua kursi ke status available berdasarkan id_jadwal
if (isset($_POST['reset_seats'])) {
    $id_jadwal = $_POST['id_jadwal'];
    $koneksi->query("UPDATE seat SET status='available' WHERE status='occupied' AND id_jadwal='$id_jadwal'");
    echo "<script>alert('Semua kursi pada jadwal tersebut telah dikembalikan ke status available');</script>";
    echo "<script>location='ubahseat.php?id_jadwal=$id_jadwal';</script>";
}

// Mengambil data kursi dari database berdasarkan id_jadwal
$id_jadwal = isset($_GET['id_jadwal']) ? $_GET['id_jadwal'] : 0;
$ambil = $koneksi->query("SELECT * FROM seat WHERE id_jadwal='$id_jadwal'");
$seats = $ambil->fetch_all(MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Seat Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="css" href="css/seat.css">
    <style>
        .seat {
            width: 50px;
            height: 50px;
            margin: 10px;
            text-align: center;
            line-height: 50px;
            border-radius: 5px;
        }
        .available {
            background-color: green;
            color: white;
        }
        .occupied {
            background-color: red;
            color: white;
        }
        .seat-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 600px;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center my-4">Seat Management for Schedule ID: <?php echo $id_jadwal; ?></h2>
    <form method="post" class="text-center mb-4">
        <input type="hidden" name="id_jadwal" value="<?php echo $id_jadwal; ?>">
        <button class="btn btn-warning" name="reset_seats">Reset All Seats to Available</button>
    </form>
    <div class="seat-container">
        <?php foreach ($seats as $seat): ?>
            <div class="seat <?php echo $seat['status']; ?>">
                <?php echo $seat['nomor_seat']; ?>
            </div>
        <?php endforeach; ?>
    </div>
</div>
</body>
</html>
