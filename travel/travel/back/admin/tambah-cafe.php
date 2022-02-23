<?php
include("koneksi.php");
mysqli_query($con, "INSERT INTO tbcafe (
		cafe,
		kdkategori,
		lokasi,
		ket1,
		ket2,
		image,
		akses,
		waktu,
		tiket
		)
	VALUES (
	'$_POST[cafe]',
	'$_POST[kdkategori]',
	'$_POST[lokasi]',
	'$_POST[ket1]',
	'$_POST[ket2]',
	'$_POST[image]',
	'$_POST[akses]',
	'$_POST[waktu]',
	'$_POST[tiket]')");
header ('location:tambah-detailcafe.php?insert=sukses');
?>