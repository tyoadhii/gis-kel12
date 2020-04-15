<?php
// Load file koneksi.php
include "koneksi.php";
?>

<html>
<head>
    <title>Data Transaksi</title>
    <link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css" /> <!-- Load file css jquery-ui -->
    <script src="js/jquery.min.js"></script> <!-- Load file jquery -->
</head>
<body>
    <h2>Data Transaksi</h2><hr>

    
        <a href="index.php">Reset Filter</a>
    
    <hr />

    <?php
    
    echo '<b>Semua Data Transaksi</b><br /><br />';
    echo '<a href="print.php">Cetak PDF</a><br /><br />';
    echo '<a href="print_excel.php">Cetak EXCEL</a><br /><br />';

        $query = "SELECT * FROM hotel ORDER BY ID"; // Tampilkan semua data transaksi diurutkan berdasarkan tanggal
    
    ?>

    <table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Nama Hotel</th>
        <th>Harga</th>
        <th>Alamat</th>
        <th>Latitdue</th>
        <th>Longitude</th>
        <th>Fasilitas</th>
        <th>Deskripsi</th>
    </tr>

    <?php
    $sql = mysqli_query($connect, $query); // Eksekusi/Jalankan query dari variabel $query
    $row = mysqli_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql

    if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
        while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
            //$tgl = date('d-m-Y', strtotime($data['tgl'])); // Ubah format tanggal jadi dd-mm-yyyy

            echo "<tr>";
			//echo "<td>".$tgl."</td>";
			echo "<td>".$data['ID']."</td>";
			echo "<td>".$data['name']."</td>";
            echo "<td>".$data['price']."</td>";
            echo "<td>".$data['address']."</td>";
            echo "<td>".$data['latitude']."</td>";
            echo "<td>".$data['longitude']."</td>";
            echo "<td>".$data['amenities']."</td>";
            echo "<td>".$data['description']."</td>";
			echo "</tr>";
        }
    }else{ // Jika data tidak ada
        echo "<tr><td colspan='5'>Data tidak ada</td></tr>";
    }
    ?>
    </table>

    
    <script src="plugin/jquery-ui/jquery-ui.min.js"></script> <!-- Load file plugin js jquery-ui -->
</body>
</html>
