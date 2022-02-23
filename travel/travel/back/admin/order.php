<?php $halaman = "order"; ?>
<?php include 'header.php'; ?>

<!--main-container-part-->
<div id="content">

<!--breadcrumbs-->
<div id="content-header">
	<div id="breadcrumb">
		<a href="index.php" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
		<a class="current"><i class="icon-reorder"></i>Order</a>
	</div>
    <h1>Transaksi Paket Tour & Travel</h1>
    <a style="margin-left:25px" href="tambah-order.php" class="btn btn-info"><i class="icon-plus"></i>&nbsp Transaksi Baru</a>
</div>

<div class="container-fluid">
<hr>
	<div class="widget-box">
		<div class="widget-content nopadding">
            <table class="table table-bordered data-table" width="100%">
              <thead>
                <tr>
                	<th>No.</th>
					<th width="15%">Nama Pelanggan</th>
					<th width="15%">Paket Wisata</th>
					<th width="10%">Driver</th>
					<th width="10%">Guide Tour</th>
					<th width="10%">Transportasi</th>
					<th width="10%">Tanggal</th>
					<th width="10%">Total Harga</th>
					<th width="20%">Opsi</th>
                </tr>
              </thead>
              <tbody>
<?php
$sql = "SELECT tborder.kdorder,tbpelanggan.nama AS pelanggan,tbpaket.nama AS paket,tbdriver.nama AS driver,tbguide.nama AS guide,tbtransport.transport,tborder.total,tborder.tanggal,tborder.status FROM tborder JOIN tbpelanggan ON tborder.kdpelanggan=tbpelanggan.kdpelanggan JOIN tbpaket ON tborder.kdpaket=tbpaket.kdpaket JOIN tbdriver ON tborder.kddriver=tbdriver.kddriver JOIN tbguide ON tborder.kdguide=tbguide.kdguide JOIN tbtransport ON tborder.kdtransport=tbtransport.kdtransport";
$hsl = mysqli_query($con, $sql);
$nomor = 1;
while ($data=mysqli_fetch_array($hsl)) {
echo "<tr>";
echo "<td>$nomor</td>";
$id = $data["kdorder"];
$nama1 = $data["pelanggan"];
$nama2 = $data["paket"];
$nama3 = $data["driver"];
$nama4 = $data["guide"];
$transport = $data["transport"];
$tanggal = $data["tanggal"];
$total=number_format($data["total"],2,",",".");
echo "<td>$nama1</td>";
echo "<td>$nama2</td>";
echo "<td>$nama3</td>";
echo "<td>$nama4</td>";
echo "<td>$transport</td>";
echo "<td>$tanggal</td>";
echo "<td>Rp $total</td>";
echo "<td><a class='btn btn-success' href='edit-order.php?id=$id'>Edit</a> ";
echo "<a class='btn btn-warning' href='detail-order.php?id=$id'>Detail</a> ";
echo"<a class='btn btn-danger' href='hapus-order.php?id=$id' onclick=\"return confirm('Yakin Mau Dihapus?');\">Hapus</a></td>";
echo "</tr>";
	$nomor++;
}
?>
            </tbody>
          	</table>
      	</div>
	</div>
</div>
<!--End-breadcrumbs-->

</div>
<!--end-main-container-part-->
<?php include 'footer.php'; ?>