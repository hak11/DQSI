<?php
$id = $_GET['id'];
$query = "SELECT a.*,b.*,c.*,d.name,e.model_name,f.*,g.*,h.* FROM ldp as a
          left JOIN ldp_perbaikan as b on a.id_ldp=b.id_ldp
          right join area as c on a.id_area=c.id_area
          right join user as d on a.id_user=d.id
          left JOIN master_mobil as e on a.model=e.model_code
          left JOIN ldp_kondisi_kendaraan as f on a.id_ldp=f.id_ldp
          left JOIN ldp_kerusakan as g on a.id_ldp=g.id_ldp
          left JOIN ldp_detail as h on a.id_ldp=h.id_ldp
          where a.id_ldp='$id'";
$eksekusi = mysqli_query($konek,$query);
$data=mysqli_fetch_array($eksekusi);
?>
<!-- Default box -->
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Detail LDP</h3>
    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
        <i class="fa fa-minus"></i></button>
      <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
        <i class="fa fa-times"></i></button>
    </div>
  </div>
  <div class="box-body">
    <div class="row">
      <div class="col-md-6">
        <div class="panel panel-warning">
          <div class="panel-heading">
            <h3 class="panel-title">Lokasi</h3>
          </div>
          <div class="panel-body">
            <div class="form-group row">
              <div class="col-md-4">
                <div class="form-group">
                  <label for="">Tanggal Penyerahan</label>
                  <input type="text" class="form-control" disabled value="<?php echo $data['tanggal_penyerahan'] ?>">
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="">Tanggal Perbaikan</label>
                  <input type="text" class="form-control" disabled value="<?php echo $data['tanggal_perbaikan'] ?>">
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="">KM</label>
                  <input type="text" class="form-control" disabled value="<?php echo $data['km'] ?>">
                  <p class="help-block"  value="<?php
                  if ($data['status_kirim']) {
                    echo $data['tanggal_perbaikan'];
                  }
                  ?>">
                  </p>
                </div>
              </div>
              <div class="col-md-12">
                <label>Informasi Bengkel</label>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" disabled value="<?php echo $data['id_area'] ?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" disabled value="<?php echo $data['pic'] ?>">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" disabled value="<?php echo $data['no_tlf'] ?>">
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" disabled value="<?php echo $data['nama_area'] ?>">
                </div>
                <div class="form-group">
                  <textarea name="name" rows="3" cols="80" class="form-control" disabled><?php echo $data['alamat'] ?></textarea>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Lokasi  -->

        <div class="col-md-6">
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">Data Kendaraan</h3>
            </div>
            <div class="panel-body">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Nomer Rangka</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['no_rangka'] ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Model</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['model'] ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Model Name</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['model_name'] ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>No Mesin</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['no_mesin'] ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Tipe Mesin</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['no_type'] ?>">
                  </div>
                </div>
              </div>
          </div>
        </div>

        <!-- Informasi Kendaraan -->

        <div class="col-md-12">
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Pokok Laporan</h3>
            </div>
            <div class="panel-body">
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Part Penyebab</label>
                    <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['part_penyebab'] ?></textarea>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Part Lokasi</label>
                    <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['part_lokasi'] ?></textarea>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Problem</label>
                    <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['problem'] ?></textarea>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Prioritas</label>
                    <input type="text" class="form-control" value="<?php echo strtoupper($data['prioritas']) ?>" disabled>
                  </div>
                  <div class="form-group">
                    <label>Perbaikan Yang Dilakukan</label>
                    <input type="text" class="form-control" value="<?php echo $data['perbaikan_tindakan'] ?>" disabled>
                  </div>
                  <div class="form-group">
                    <label>Komentar Bengkel</label>
                    <input type="text" class="form-control" value="<?php echo $data['komentar_bengkel'] ?>" disabled>
                  </div>
                </div>
              </div>
          </div>
        </div>

        <!-- Pokok Permasalahn  -->
        <div class="col-md-6">
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">Kondisi Kendaraan</h3>
            </div>
            <div class="panel-body">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Kondisi Jalan</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['kondisi_jalan'] ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Kondisi Kendaraaan</label>
                    <ul>
                      <?php
                      $explode = explode(',',trim($data['kondisi_kendaraan']));
                      foreach ($explode as $val) {
                        echo "<li>".$val."</li>";
                      }
                      ?>
                    </ul>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>T1</label>
                    <textarea rows="4" cols="80" class="form-control" disabled><?php echo $data['t1'] ?></textarea>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>T2</label>
                    <textarea rows="4" cols="80" class="form-control" disabled><?php echo $data['t2'] ?></textarea>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Kecepatan</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['kecepatan_kendaraan'] ?>">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Posisi Gigi</label>
                    <input type="text" class="form-control" disabled value="<?php echo $data['posisi_gigi'] ?>">
                  </div>
                </div>
              </div>
          </div>
        </div>

        <!-- Pokok Permasalahn  -->
        <div class="col-md-6">
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">Tambahan</h3>
            </div>
            <div class="panel-body">
              <div class="form-group">
                <label>Permintaan Perbaikan</label>
                <ul>
                  <?php
                  $explode = explode(',',trim($data['permintaan_perbaikan']));
                  foreach ($explode as $val) {
                    echo "<li>".$val."</li>";
                  }
                  ?>
                </ul>
              </div>
              <div class="form-group">
                <label>Pengaruh Market</label>
                <ul>
                  <?php
                  $explode = explode(',',trim($data['pengaruh_market']));
                  foreach ($explode as $val) {
                    echo "<li>".$val."</li>";
                  }
                  ?>
                </ul>
              </div>
              <div class="form-group">
                <label>Permintaan Konkret</label>
                <ul>
                  <?php
                  $explode = explode(',',trim($data['permintaan_konkret']));
                  foreach ($explode as $val) {
                    echo "<li>".$val."</li>";
                  }
                  ?>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Kondisi Kendaraan -->
        <div class="col-md-12">
          <div class="panel panel-danger">
            <div class="panel-heading">
              <h3 class="panel-title">Perbaikan</h3>
            </div>
            <div class="panel-body">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Customer Complaint</label>
                  <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['part_penyebab'] ?></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Detail Kerusakan</label>
                  <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['part_lokasi'] ?></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Kemungkinana Penyebab</label>
                  <textarea rows="9" cols="80" class="form-control" disabled><?php echo $data['problem'] ?></textarea>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Kerusakan -->
    </div>
  </div>
</div>
<!-- /.box -->
