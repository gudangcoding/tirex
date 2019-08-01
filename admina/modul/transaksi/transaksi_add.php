
           
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     TRANSAKSI
                    </h1>
                           <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>transaksi">TRANSAKSI</a></li>
                        <li class="active">Tambah TRANSAKSI</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-primary">
                                 <div class="box-header">
                                    <h3 class="box-title">Tambah TRANSAKSI</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="input" method="post" class="form-horizontal foto_banyak" action="<?=base_admin();?>modul/transaksi/transaksi_action.php?act=in">

                    <table class="table">
                    	<tr>
                    		<td>Provinsi</td>
                    		<td><input type="text" class="form-control" name="Provinsi"></td>
                    		<td>Kabupaten</td>
                    		<td><input type="text" class="form-control" name="Kabupaten"></td>
                    	</tr>
                    	<tr>
                    		<td>Kecamatan</td>
                    		<td><input type="text" class="form-control" name="Kecamatan"></td>
                    		<td>Kelurahan</td>
                    		<td><input type="text" class="form-control" name="Kelurahan"></td>
                    	</tr>
                    	<tr>
                    		<td>Active</td>
                    		<td><input type="checkbox" name="active"> Ya</td>
                    		<td>Jenis</td>
                    		<td>
                    			<select class="form-control" name="pilih">
                    				<option>Pilih Salah Satu</option>
                    			</select>
                    		</td>
                    		

                    	</tr>
                    </table>

                         
                      <div class="form-group">
                        <label for="tags" class="control-label col-lg-2">&nbsp;</label>
                        <div class="col-lg-10">
                          <input type="submit" class="btn btn-primary btn-flat" value="submit">
                        </div>
                      </div><!-- /.form-group -->
                    </form>
 <a href="<?=base_index();?>transaksi" class="btn btn-success btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
                  
                </section><!-- /.content -->
        
            