<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
      Tirex Cso
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=base_index();?>tirex-cso">Tirex Cso</a></li>
        <li class="active">Pilih OPS</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
<div class="row">
<div class="col-lg-12">
<div class="box box-solid box-primary">
                   <div class="box-header">
                    <h3 class="box-title">Pilih OPS Lapangan</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

  <div class="box-body">
     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/tirex_cso/tirex_cso_action.php?act=up">
      <input type="hidden" name="no_resi" value="<?=$data_edit->no_resi;?>"> 
     
<div class="form-group">
        <label for="jenis_barang" class="control-label col-lg-2">Pilih OPS</label>
        <div class="col-lg-10">
          
          <select class="form-control chzn-select" name="ops_lapangan" value="<?=$data_edit->customer;?>">
                        <option>Pilih OPS</option>
                        <?php 
                          foreach ($db->fetch_custom("SELECT * FROM sys_users WHERE id_group='3'") as $trx) {
                            echo "<option value='$trx->id'>$trx->first_name | $trx->last_name</option>";
                          }
                        ?>
                      </select>
        </div>
      </div><!-- /.form-group -->


      <input type="hidden" name="id" value="<?=$data_edit->id;?>">
      <div class="form-group">
        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
        <div class="col-lg-10">
          <input type="submit" class="btn btn-primary btn-flat pull-right" value="Simpan">
        </div>
      </div><!-- /.form-group -->
    </form>
    <a href="<?=base_index();?>tirex-cso" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>

  </div>
  </div>
</div>
</div>
  
</section><!-- /.content -->

