 <?php $halaman = "cafe"; ?>
<?php include 'header.php'; ?>

<!--main-container-part-->
<div id="content">
<?php
include("koneksi.php");
$id = $_GET["id"];
$sql = "SELECT * FROM tbtongkrongan  WHERE kdcafe=$id";
$rpaket = mysqli_query($con,$sql);
$df = mysqli_fetch_array($rpaket);                                     
$cafe = $df["cafe"];
$lokasi = $df["lokasi"];
$akses = $df["akses"];
$waktu = $df["waktu"];
$tiket = $df["tiket"];
$image = $df["image"];

echo '';
?>
<!--breadcrumbs-->
<div id="content-header">
	<div id="breadcrumb">
		<a href="index.php" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
		<a href="paket.php" title="Go to Paket" class="tip-bottom"><i class="icon-shopping-cart"></i> Paket</a>
		<a class="current">Detail</a>
	</div>
    <h1> </h1>
    <a style="margin-left:25px" href="cafe.php" class="btn btn-success"><i class="icon-home"></i>&nbsp Kembali</a>
</div>

<!--Action boxes-->
<div class="container-fluid">
  <div class="row-fluid">
      <!--PERTAMA-->
      	<div class="widget-box">
      	  	<div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            	<h5>Detail cafe "<?php echo $cafe;?>"</h5>
          	</div>
       		<div class="widget-content nopadding">
			<form method="post" class="form-horizontal">
		    	<div class="control-group">
          		<label class="control-label">cafe  :</label>
          			<div class="controls">
            		<input type="text" readonly class="span10" value="<?php echo $cafe;?>" />
          			</div>
        		</div>
        		<div class="control-group">
          		<label class="control-label">Lokasi  :</label>
          			<div class="controls">
            		<textarea class="span10" readonly=""><?php echo $lokasi;?></textarea>
          			</div>
        		</div>
        		<div class="control-group">
          		<label class="control-label">Gambar  :</label>
          			<div class="controls">
            		<?php echo "<img src='../../front/images/cafe/$image' />";?>
          			</div>
        		</div>
        		<div class="control-group">
          		<label class="control-label">Akses Lokasi :</label>
          			<div class="controls">
            		<textarea class="span10" readonly=""><?php echo $akses;?></textarea>
          			</div>
        		</div>
        		<div class="control-group">
          		<label class="control-label">Jam Buka  :</label>
          			<div class="controls">
            		<input type="text" readonly class="span10" value="<?php echo $waktu;?>" />
          			</div>
        		</div>
        		<div class="control-group">
          		<label class="control-label">Info Tiket  :</label>
          			<div class="controls">
            		<input type="text" readonly class="span10" value="<?php echo $tiket;?>" />
          			</div>
        		</div>
			</form>
			</div>
      	</div>
      	<div class="widget-box">
      		<div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            	<h5>Galeri dari "<?php echo $cafe;?>"</h5>
          	</div>
          	<div class="controls">
          		<table class="table table-bordered data-table" width="100%">
          		<thead>
                <tr>
                	<th width="25%">Galeri 1</th>
					<th width="25%">Galeri 2</th>
					<th width="25%">Galeri 3</th>
					<th width="25%">Galeri 4</th>
                </tr>
              </thead>
            	<?php
				$id = $_GET["id"];
				$kolom = 4;
				$i = 0;
				$sql = "SELECT * FROM tbdetailcafe WHERE kdcafe=$id ";
				$hsl = mysqli_query($con, $sql);
				while ($data=mysqli_fetch_array($hsl)) {
				echo "<tr>";
				$id = $data["kdcafe"];
				$kd = $data["id"];
				$g1 = $data["g1"];
				$g2 = $data["g2"];
				$g3 = $data["g3"];
				$g4 = $data["g4"];
				echo "<td><img src='../../front/images/cafe/$g1' /></td>";
				echo "<td><img src='../../front/images/cafe/$g2' /></td>";
				echo "<td><img src='../../front/images/cafe/$g3' /></td>";
				echo "<td><img src='../../front/images/cafe/$g4' /></td>";
				echo "</tr>";
				}
				?>
				</table>
          	</div>
      	</div>
      <!--END PERTAMA-->
  </div>
</div>
<!--End Action boxes-->

</div>
<!--end-main-container-part-->
<?php include 'footer.php'; ?>