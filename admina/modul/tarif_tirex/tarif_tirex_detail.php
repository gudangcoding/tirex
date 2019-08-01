

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     TARIF TIREX
                    </h1>
                   <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tarif-tirex">TARIF TIREX</a></li>
                        <li class="active">Detail TARIF TIREX</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Detail TARIF TIREX</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                   <form class="form-horizontal">
                      <div class="form-group">
                        <label for="kelompok" class="control-label col-lg-2">kelompok</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kelompok;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="kota" class="control-label col-lg-2">kota</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kota;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="kode_kota" class="control-label col-lg-2">kode_kota</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kode_kota;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="tarif" class="control-label col-lg-2">tarif</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->tarif;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="minimal" class="control-label col-lg-2">minimal</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->minimal;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="lead_time" class="control-label col-lg-2">lead_time</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->lead_time;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->

                   
                    </form>
                    <a href="<?=base_index();?>tarif-tirex" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
