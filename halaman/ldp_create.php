
<!-- Default box -->
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Title</h3>

    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
        <i class="fa fa-minus"></i></button>
      <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
        <i class="fa fa-times"></i></button>
    </div>
  </div>
  <div class="box-body">
    <div class="row">
        <div class="col-md-2">
          <button class="btn btn-block btn-warning">Refresh</button>
        </div>
        <div class="col-md-2">
          <button class="btn btn-block btn-primary">Save</button>
        </div>
        <div class="col-md-2">
          <button class="btn btn-block btn-success">Send</button>
        </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-md-12">
        <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Data Kendaraan</a></li>
              <li><a href="#tab_2" data-toggle="tab">Kondisi Kendaraan</a></li>
              <li><a href="#tab_3" data-toggle="tab">Kerusakan</a></li>
              <li><a href="#tab_4" data-toggle="tab">Perbaikan</a></li>
              <li><a href="#tab_5" data-toggle="tab">Lain-Lain</a></li>
              <li><a href="#tab_6" data-toggle="tab">Upload Files</a></li>
            </ul>
            <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Form Kendaraan</h3>
              </div>
              <div class="panel-body">
                <div class="form-horizontal">
                <input type="hidden" name="id_area" value="<?php echo $_SESSION['id_user'] ?>">
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Lokasi :</label>
                      <div class="col-sm-4">
                        <input type="text" disabled class="form-control" value="<?php echo strtoupper($_SESSION['nama_area']) ?>" required="required">
                      </div>
                      <div class="col-sm-4">
                        <input type="text" disabled class="form-control" value="<?php echo date('d-m-Y') ?>" >
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Kode / Nama Bengkel :</label>
                      <div class="col-sm-2">
                        <input type="text" class="form-control" value="<?php echo strtoupper($_SESSION['id_area']) ?>" disabled required="required">
                      </div>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" disabled value="<?php echo strtoupper($_SESSION['nama_area']) ?>">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nama Pembuat LPD :</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control" value="<?php echo strtoupper($_SESSION['name']) ?>" disabled>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nomer Rangka :</label>
                      <div class="col-sm-4">
                        <select name="no_rangka" class="form-control">
                        <?php
                        $query = "SELECT chassis_no FROM main_master group by chassis_no";
                        $val = mysqli_query($konek,$query);
                        while($row=mysqli_fetch_array($val)) {
                          ?>
                          <option value="<?php echo $row['chassis_no'] ?>"><?php echo $row['chassis_no'] ?></option>
                          <?php
                        }
                        ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Model :</label>
                      <div class="col-sm-4">
                      <select name="model_mesin" class="form-control">
                        <?php
                        $query = "SELECT model_code FROM main_master group by model_code";
                        $val = mysqli_query($konek,$query);
                        while($row=mysqli_fetch_array($val)) {
                          ?>
                          <option value="<?php echo $row['model_code'] ?>"><?php echo $row['model_code'] ?></option>
                          <?php
                        }
                        ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nomer Mesin :</label>
                      <div class="col-sm-4">
                      <select name="model_mesin" class="form-control">
                        <?php
                        $query = "SELECT eg_no FROM main_master group by eg_no";
                        $val = mysqli_query($konek,$query);
                        while($row=mysqli_fetch_array($val)) {
                          ?>
                          <option value="<?php echo $row['eg_no'] ?>"><?php echo $row['eg_no'] ?></option>
                          <?php
                        }
                        ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Tipe Mesin :</label>
                      <div class="col-sm-4">
                        <select name="model_mesin" class="form-control">
                          <?php
                          $query = "SELECT eg_type FROM main_master group by eg_type";
                          $val = mysqli_query($konek,$query);
                          while($row=mysqli_fetch_array($val)) {
                            ?>
                            <option value="<?php echo $row['eg_type'] ?>"><?php echo $row['eg_type'] ?></option>
                            <?php
                          }
                          ?>
                          </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Pokok Laporan :</label>
                      <div class="col-sm-8">
                      <div class="row">
                          <div class="col-md-4">
                            Part Penyebab
                            <div class="form-group">
                              <div class="col-sm-12">
                                <input type="text" name="part_penyebab" class="form-control">
                              </div>
                            </div>
                          </div>
                          <div class="col-md-4">
                            Part Lokasi
                            <div class="form-group">
                              <div class="col-sm-12">
                                <input type="text" name="part_lokasi" class="form-control">
                              </div>
                            </div>
                          </div>
                          <div class="col-md-4">
                            Problem
                            <div class="form-group">
                              <div class="col-sm-12">
                                <input type="text" name="problem" class="form-control">
                              </div>
                            </div>
                          </div>
                      </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Tanggal Penyerahan :</label>
                      <div class="col-sm-4">
                        <input type="date" name="tanggal_penyerahan" class="form-control" required="required">
                      </div>
                      <div class="col-sm-4">
                        <input type="checkbox" name="kirim" value="1">Belum Dikirim / Kendaraan Baru
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Tanggal perbaikan :</label>
                      <div class="col-sm-4">
                        <input type="date" name="tanggal_perbaikan" class="form-control" required="required">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Km :</label>
                      <div class="col-sm-4">
                        <input type="number" name="km" class="form-control" required="required">
                      </div>
                    </div>
              </div>
              </div>
            </div>
            </div>
            <!--  -->
              <div class="tab-pane" id="tab_2">
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Kondisi Kendaraan</h3>
                </div>
                <div class="panel-body">
                <div class="form-horizontal">
                      <div class="form-group">
                        <label for="kondisi_jalan" class="col-sm-3 control-label">Kondisi Jalan :</label>
                        <div class="col-sm-4">
                          <input type="radio" name="kondisi_jalan" value="rata"> Rata<br>
                          <input type="radio" name="kondisi_jalan" value="tidak_rata"> Tidak Rata<br>
                          <input type="radio" name="kondisi_jalan" value="rusak"> Rusak<br>
                          <input type="radio" name="kondisi_jalan" value="lain_lain"> Lain - Lain
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="kondisi_kendaraan" class="col-sm-3 control-label">Kondisi Kendaraan :</label>
                        <div class="col-sm-4">
                          <input type="checkbox" name="kondisi_kendaraan[]" value="kecepatan_tetap">Kecepatan Tetap<br>
                          <input type="checkbox" name="kondisi_kendaraan[]" value="saat_akselerasi">Saat Akselerasi<br>
                          <input type="checkbox" name="kondisi_kendaraan[]" value="ada_muatan">Ada Muatan
                        </div>
                        <div class="col-sm-4">
                          <input type="checkbox" name="kondisi_kendaraan[]" value="stationer">Stationer<br>
                          <input type="checkbox" name="kondisi_kendaraan[]" value="saat_deselerasi">Saat Deselerasi<br>
                          <input type="checkbox" name="kondisi_kendaraan[]" value="tidak_ada_muatan">Tidak Ada Muatan
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="kecepatan_kendaraan" class="col-sm-3 control-label">Kecepatan Kendaraan :</label>
                        <div class="col-sm-2">
                          <input type="number" name="kecepatan_kendaraan" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="posisi_gigi" class="col-sm-3 control-label">Posisi Gigi :</label>
                        <div class="col-sm-2">
                          <input type="number" name="posisi_gigi" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="t1" class="col-sm-3 control-label">T1 :</label>
                        <div class="col-sm-4">
                          <select name="t1" class="form-control">
                            <option value="0">-</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="t2" class="col-sm-3 control-label">T2 :</label>
                        <div class="col-sm-4">
                          <select name="t2" class="form-control">
                            <option value="0">-</option>
                          </select>
                        </div>
                      </div>
                </div>
                </div>
              </div>
              </div>
            <!--  -->
              <div class="tab-pane" id="tab_3">
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Kerusakan</h3>
                </div>
                <div class="panel-body">
                <div class="form-horizontal">
                      <div class="form-group">
                        <label for="customer_complaint" class="col-sm-3 control-label">Customer Complaint :</label>
                        <div class="col-sm-8">
                          <textarea name="customer_complaint" class="form-control"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="detail_kerusakan" class="col-sm-3 control-label">Detail Kerusakan :</label>
                        <div class="col-sm-8">
                          <textarea name="detail_kerusakan" class="form-control"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="kemungkinan_penyebab" class="col-sm-3 control-label">Kemungkinan Penyebab :</label>
                        <div class="col-sm-8">
                          <textarea name="kemungkinan_penyebab" class="form-control"></textarea>
                        </div>
                      </div>
                </div>
                </div>
              </div>
              </div>
            <!--  -->
              <div class="tab-pane" id="tab_4">
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Perbaikan</h3>
                </div>
                <div class="panel-body">
                <div class="form-horizontal">
                      <div class="form-group">
                        <label for="prioritas" class="col-sm-3 control-label">Prioritas :</label>
                        <div class="col-sm-2">
                          <select name="prioritas" class="form-control">
                            <option value="0">-</option>
                            <option value="s">S</option>
                            <option value="x">X</option>
                            <option value="y">Y</option>
                            <option value="z">Z</option>
                          </select>
                        </div>
                        <div class="col-md-4">
                          <p>S:Fire Hazard & Accident, X: Safety, Y: Function, Z: Others</p>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="perbaikan_dilakukan" class="col-sm-3 control-label">Perbaikan Yang Dilakukan :</label>
                        <div class="col-sm-8">
                          <textarea name="perbaikan_dilakukan" class="form-control"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="komentar_bengkel" class="col-sm-3 control-label">Komentar Bengkel :</label>
                        <div class="col-sm-8">
                          <textarea name="komentar_bengkel" class="form-control"></textarea>
                        </div>
                      </div>
                </div>
                </div>
              </div>
              </div>
            <!--  -->
              <div class="tab-pane" id="tab_5">
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Lain-Lain</h3>
                </div>
                <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                      <label for="kondisi_kendaraan" class="col-sm-3 control-label">Permintaan Perbaikan :</label>
                      <div class="col-sm-5">
                        <input type="checkbox" name="permintaan_perbaikan[]" >Ganti mobil<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Permintaan perbaikan sebelum problem terjadi<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Kesulitan dalam memperbaiki<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Tidak ada metode perbaikan<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Perbaikan membutuhkan waktu lama<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Perbaikan sementara (kemungkinan perbaikan ulang)
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="kondisi_kendaraan" class="col-sm-3 control-label">Pengaruh Terhadap Market :</label>
                      <div class="col-sm-5">
                        <input type="checkbox" name="permintaan_perbaikan[]" >Jumlah customer / VIP<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Berurusan dengan polisi<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Masuk media massa<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Berurusan dengan instansi pemerintahan<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Kasus hukum persidangan
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="kondisi_kendaraan" class="col-sm-3 control-label">Permintaan Konkret :</label>
                      <div class="col-sm-5">
                        <input type="checkbox" name="permintaan_perbaikan[]" >Instruksi untuk diperbaiki<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Kirim service informasi<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Penanganan sementara (early resolution)<br>
                        <input type="checkbox" name="permintaan_perbaikan[]" >Lain-lain
                      </div>
                    </div>
                </div>
                </div>
              </div>
              </div>
            <!--  -->
              <div class="tab-pane" id="tab_5">
                <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Upload File</h3>
                </div>
                <div class="panel-body">
                <div class="form-horizontal">
                    <input type="file" name="upload[]">
                </div>
                </div>
              </div>
              </div>
            <!--  -->
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
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