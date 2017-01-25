<div class="col-md-8 col-md-offset-2">
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Tambah Master Model Mobil</h3>
  </div>
  <div class="box-body">
    <div class="row">
      <div class="col-md-12">
        <form action="simpan_mobil.php" method="post">
            <div class="form-group">
              <label>Model Code</label>
              <input type="text" class="form-control" name="model_code" required="">
            </div>
            <div class="form-group">
              <label>Model Name</label>
              <input type="text" class="form-control" name="model_name" required="">
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success" name="button">Simpan</button>
              <a href="index.php?hal=master_model" type="button" class="btn btn-warning" name="button">Cancel</a>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
