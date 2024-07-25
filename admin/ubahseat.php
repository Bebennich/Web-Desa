<?php
// Check if the user is an admin
if (!isset($_SESSION['admin'])) {
    echo "<script>location='index.php';</script>";   
}

// Fetch all unique schedules based on origin and destination from the jadwal table
$jadwalQuery = $koneksi->query("SELECT DISTINCT id_jadwal, asal, tujuan FROM jadwal");
$schedules = $jadwalQuery->fetch_all(MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Select Schedule</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="text-center my-4">Select Schedule</h2>
    <form action="ubahseatjadwa.php" method="get" class="text-center">
        <div class="form-group">
            <label for="id_jadwal">Select Schedule:</label>
            <select name="id_jadwal" id="id_jadwal" class="form-control">
                <?php foreach ($schedules as $schedule): ?>
                    <option value="<?php echo $schedule['id_jadwal']; ?>">
                        <?php echo $schedule['asal'] . ' - ' . $schedule['tujuan']; ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Manage Seats</button>
    </form>
</div>
</body>
</html>
