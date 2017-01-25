
<!-- Default box -->
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Master Model Mobil</h3>
    <div class="box-tools pull-right">
      <a type="button" class="btn btn-success" href="index.php?hal=tambah_master_model">Tambah Data</a>

    </div>
  </div>
  <div class="box-body">
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="input" class="col-sm-3 control-label text-right">Lokasi :</label>
          <div class="col-sm-9">
            <input type="text" id="input" class="form-control" value="Jakarta" disabled required="required" pattern="" title="">
          </div>
        </div>
        <hr>
        <div class="form-group">
          <label for="input" class="col-sm-3 control-label text-right">Bengkel :</label>
          <div class="col-sm-3">
            <input type="text" name="" id="input" class="form-control" value="2101" disabled required="required" pattern="" title="">
          </div>
          <div class="col-sm-6">
            <input type="text" name="" id="input" class="form-control" value="DSO-SUNTER" disabled required="required" pattern="" title="">
          </div>
        </div>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-md-12">
        <div class="table-responsive">
          <table class="table table-hover datatables-basic">
            <thead>
              <tr>
                <th>No.</th>
                <th>Model Code</th>
                <th>Name</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody role="rowgroup">
            <?php
            $query = "SELECT * from master_mobil";
            $eksekusi = mysqli_query($konek,$query);
            $no = 1;
            while($row=mysqli_fetch_array($eksekusi)){
              ?>
              <tr>
                <td><?php echo $no ?></td>
                <td><?php echo $row['model_code']?></td>
                <td><?php echo $row['model_name']?></td>
                <td width="130px"><a href="hapus_mobil.php?id=<?php echo $row['model_code'] ?>" type="button" class="btn btn-danger btn-sm">Hapus</a></td>
              </tr>
              <?php
              $no++;
            }

            ?>
          </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- /.box-body -->
  <div class="box-footer">
    <!-- Footer -->
  </div>
  <!-- /.box-footer-->
</div>
<!-- /.box -->
