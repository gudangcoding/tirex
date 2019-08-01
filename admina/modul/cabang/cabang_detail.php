

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     CABANG
                    </h1>
                   <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>cabang">CABANG</a></li>
                        <li class="active">Detail CABANG</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Detail CABANG</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                   <form class="form-horizontal">
                      <div class="form-group">
                        <label for="nama_cabang" class="control-label col-lg-2">nama_cabang</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->nama_cabang;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="kode_cabang" class="control-label col-lg-2">kode_cabang</label>
                        <div class="col-lg-10">
                          <input type="text" disabled="" value="<?=$data_edit->kode_cabang;?>" class="form-control">
                        </div>
                      </div><!-- /.form-group -->

                   
                    </form>
                    <a href="<?=base_index();?>cabang" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
