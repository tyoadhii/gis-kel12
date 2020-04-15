<?php
defined('BASEPATH') or exit('No direct script access allowed');

$this->load->view('headerAdmin', $this->data);
?>
<div class="page-header">
	<h1>Home</h1>
</div>
<p>Tugas GIS UTS PBD dengan PHP (Framework Codeigniter 3), Google Maps V3 API dan Twitter bootstrap, Dibuat demi memenuhi tugas Mata Kuliah <i>Pemrograman Basis Data</i> , Dosen (<i>Yudi Eko W</i>).</p>
<table class="table table-striped">
	<tbody>
		<tr>
			<td>Nama Pengembang</td>
			<td width="50" class="text-center">:</td>
			<td>Chandra Purnama - Setyo Adhi - Lisa Ruth</td>
		</tr>
		<!-- <tr>
								<td>Biografi</td>
								<td width="50" class="text-center">:</td>
								<td><a href="#">-</a></td>
							</tr> -->
		<tr>
			<td>Kelompok</td>
			<td width="50" class="text-center">:</td>
			<td>12</td>
		</tr>
		<tr>
			<td>NIM</td>
			<td width="50" class="text-center">:</td>
			<td>21120117130070 - 21120117130077 - 21120117100038</td>
		</tr>
		<tr>
			<td>Alamat</td>
			<td width="50" class="text-center">:</td>
			<td><a href="https://www.google.com/search?safe=strict&client=firefox-b-d&q=teknik%20komputer%20undip&sa=X&ved=2ahUKEwjK5ev2y-ToAhVVU30KHVpDC68QvS4wAnoECAoQIA&biw=1366&bih=654&dpr=1&npsic=0&rflfq=1&rlha=0&rllag=-7050066,110439070,288&tbm=lcl&rldimm=10859978465113537041&lqi=ChV0ZWtuaWsga29tcHV0ZXIgdW5kaXBaKAoPdGVrbmlrIGtvbXB1dGVyIhV0ZWtuaWsga29tcHV0ZXIgdW5kaXA&rldoc=1&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2&rlst=f#rlfi=hd:;si:10859978465113537041,l,ChV0ZWtuaWsga29tcHV0ZXIgdW5kaXBaKAoPdGVrbmlrIGtvbXB1dGVyIhV0ZWtuaWsga29tcHV0ZXIgdW5kaXA;mv:[[-7.047953700000001,110.4411438],[-7.0521797,110.4370557]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2">Teknik Komputer UNDIP</a></td>
		</tr>

	</tbody>
	<?php
	$this->load->view('footerAdmin', $this->data);

/* End of file main-admin.php */
/* Location: ./application/views/main-admin.php */
