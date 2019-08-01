

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                      TARIF CARGO MURAH
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tarif-cargo-murah">TARIF CARGO MURAH</a></li>
                        <li class="active">Edit TARIF CARGO MURAH</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Edit TARIF CARGO MURAH</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/tarif_cargo_murah/tarif_cargo_murah_action.php?act=up">
                      <div class="form-group">
                        <label for="kelompok" class="control-label col-lg-2">kelompok</label>
                        <div class="col-lg-10">
                          <input type="text" name="kelompok" value="<?=$data_edit->kelompok;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="kota_tujuan" class="control-label col-lg-2">kota_tujuan</label>
                        <div class="col-lg-10">
                          <input type="text" name="kota_tujuan" value="<?=$data_edit->kota_tujuan;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="tarif" class="control-label col-lg-2">tarif</label>
                        <div class="col-lg-10">
                          <input type="text" name="tarif" value="<?=$data_edit->tarif;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="harga_balik" class="control-label col-lg-2">harga_balik</label>
                        <div class="col-lg-10">
                          <input type="text" name="harga_balik" value="<?=$data_edit->harga_balik;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="minimal" class="control-label col-lg-2">minimal</label>
                        <div class="col-lg-10">
                          <input type="text" name="minimal" value="<?=$data_edit->minimal;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="lead_time" class="control-label col-lg-2">lead_time</label>
                        <div class="col-lg-10">
                          <input type="text" name="lead_time" value="<?=$data_edit->lead_time;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->
<div class="form-group">
                        <label for="keterangan" class="control-label col-lg-2">keterangan</label>
                        <div class="col-lg-10">
                          <input type="text" name="keterangan" value="<?=$data_edit->keterangan;?>" class="form-control" required> 
                        </div>
                      </div><!-- /.form-group -->

                      <input type="hidden" name="id" value="<?=$data_edit->id;?>">
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="submit">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
                    <a href="<?=base_index();?>tarif-cargo-murah" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
 