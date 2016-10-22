
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
              <li><a href="#tab_7" data-toggle="tab">Download File</a></li>
            </ul>
            <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Form Kendaraan</h3>
              </div>
              <div class="panel-body">
                <form action="" method="POST" class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Lokasi :</label>
                      <div class="col-sm-4">
                        <input type="text" disabled class="form-control" value="Jakarta" required="required">
                      </div>
                      <div class="col-sm-4">
                        <input type="text" disabled class="form-control" value="<?php echo date('d-m-Y') ?>" >
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Kode / Nama Bengkel :</label>
                      <div class="col-sm-2">
                        <input type="text" class="form-control" value="2101" disabled required="required">
                      </div>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" disabled value="DSO-SUNTER">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nama Pembuat LPD :</label>
                      <div class="col-sm-8">
                        <input type="text" name="id_user" class="form-control" required="required">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nomer Rangka :</label>
                      <div class="col-sm-4">
                        <input type="text" name="no_rangka" class="form-control" required="required">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Model :</label>
                      <div class="col-sm-4">
                        <input type="text" name="model_mesin" class="form-control" required="required">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Nomer Mesin :</label>
                      <div class="col-sm-4">
                        <input type="text" name="no_mesin" class="form-control" required="required">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="input" class="col-sm-3 control-label">Tipe Mesin :</label>
                      <div class="col-sm-4">
                        <select name="tipe_mesin" class="form-control">
                          <option value="">-</option>
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
                    <div class="form-group">
                      <div class="col-sm-9 col-sm-offset-2 text-right">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </div>
                </form>
              </div>
            </div>
            </div>
            <?php  
            for ($i=2; $i <= 7 ; $i++) { 
            ?>
              <div class="tab-pane" id="tab_<?php echo $i; ?>">
                <b>How to use:<?php echo $i; ?> </b>

                <p>Exactly like the original bootstrap tabs except you should use
                  the custom wrapper <code>.nav-tabs-custom</code> to achieve this style.</p>
                A wonderful serenity has taken possession of my entire soul,
                like these sweet mornings of spring which I enjoy with my whole heart.
                I am alone, and feel the charm of existence in this spot,
                which was created for the bliss of souls like mine. I am so happy,
                my dear friend, so absorbed in the exquisite sense of mere tranquil existence,
                that I neglect my talents. I should be incapable of drawing a single stroke
                at the present moment; and yet I feel that I never was a greater artist than now.
              </div>
            <?php
            }
            ?>
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