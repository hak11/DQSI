
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
            <div class="tab-pane active" id="tab_<?php echo $i; ?>">
                <b>How to use:</b>

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