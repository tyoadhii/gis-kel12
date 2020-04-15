<?php ob_start(); ?>
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
<?php
$html = ob_get_contents();
ob_end_clean();

require_once('plugin/html2pdf/html2pdf.class.php');
$pdf = new HTML2PDF('P','A4','en');
$pdf->WriteHTML($html);
$pdf->Output('Data Semua Hotel.pdf', 'D');
?>
