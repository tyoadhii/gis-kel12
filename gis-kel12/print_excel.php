<?php
	header("Content-Type: application/force-download");
	header("Cache-Control: no-cache, must-revalidate");
	header("Expires: Sat, 26 Jul 2010 05:00:00 GMT"); 
	header("content-disposition: attachment;filename=Data_Semua_Hotel_Tanggal_".date('dmY').".xls");
	?>
<html>
<head>
	<title>Cetak PDF</title>
	<style>
		table {
			border-collapse:collapse;
			table-layout:fixed;width: 630px;
		}
		table td {
			word-wrap:break-word;
			width: 20%;
		}
	</style>
</head>
<body>
	<?php
	include "koneksi.php";

		$query = "SELECT * FROM hotel ORDER BY ID"; // Tampilkan semua data transaksi diurutkan berdasarkan tanggal
	
	?>
	<table border="1" cellpadding="8">
	<tr>
        <th>No</th>
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

    $nomor = 1;

	if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
		while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
			//$tgl = date('d-m-Y', strtotime($data['tgl'])); // Ubah format tanggal jadi dd-mm-yyyy

			echo "<tr>";
			//echo "<td>".$tgl."</td>";
			echo "<td>".$nomor++."</td>";
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
</body>
</html>
