
           
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     TARIF DIMENSI
                    </h1>
                           <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tarif-dimensi">TARIF DIMENSI</a></li>
                        <li class="active">Tambah TARIF DIMENSI</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-primary">
                                 <div class="box-header">
                                    <h3 class="box-title">Tambah TARIF DIMENSI</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="input" method="post" class="form-horizontal foto_banyak" action="<?=base_admin();?>modul/tarif_dimensi/tarif_dimensi_action.php?act=in">
                      <div class="form-group">
                        <label for="kelompok" class="control-label col-lg-2">kelompok</label>
                        <div class="col-lg-10">
                          <input type="text" name="kelompok" placeholder="kelompok" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="tujuan" class="control-label col-lg-2">tujuan</label>
                        <div class="col-lg-10">
                          <input type="text" name="tujuan" placeholder="tujuan" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="harga" class="control-label col-lg-2">harga</label>
                        <div class="col-lg-10">
                          <input type="text" name="harga" placeholder="harga" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="minimal" class="control-label col-lg-2">minimal</label>
                        <div class="col-lg-10">
                          <input type="text" name="minimal" placeholder="minimal" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="lead_time" class="control-label col-lg-2">lead_time</label>
                        <div class="col-lg-10">
                          <input type="text" name="lead_time" placeholder="lead_time" class="form-control" > 
                        </div>
                      </div><!-- /.form-group -->

                      
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="submit">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>tarif-dimensi" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            