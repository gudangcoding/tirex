

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     TARIF DIMENSI
                    </h1>
                   <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tarif-dimensi">TARIF DIMENSI</a></li>
                        <li class="active">Detail TARIF DIMENSI</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Detail TARIF DIMENSI</h3>
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
                        <label for="tujuan" class="control-label col-lg-2">tujuan</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->tujuan;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="harga" class="control-label col-lg-2">harga</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->harga;?>" class="form-control">
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
                    <a href="<?=base_index();?>tarif-dimensi" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
