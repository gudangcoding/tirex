
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage TRANSAKSI
                    </h1>
                       <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>transaksi">TRANSAKSI</a></li>
                        <li class="active">TRANSAKSI List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                  <h3 class="box-title">List TRANSAKSI</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table id="dtb_manual" class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                           <th style="width:25px" align="center">No</th>
                          <th>nama_provinsi</th>
													
                          <th>Action</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $dtb=$db->fetch_custom("select provinsi.nama_provinsi,provinsi.id from provinsi ");
      $i=1;
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$i;?></td><td><?=$isi->nama_provinsi;?></td>

        <td>
        <a href="<?=base_index();?>transaksi/detail/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a> 
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'transaksi/edit/'.$isi->id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>  
        <?=($role_act["del_act"]=="Y")?'<button class="btn btn-danger hapus btn-flat" data-uri="'.base_admin().'modul/transaksi/transaksi_action.php" data-id="'.$isi->id.'"><i class="fa fa-trash-o"></i></button>':"";?>
        </td>
        </tr>
        <?php
        $i++;
      }
      ?>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
        <?php
       foreach ($db->fetch_all("sys_menu") as $isi) {
                      if ($path_url==$isi->url) {
                          if ($role_act["insert_act"]=="Y") {
                    ?>
          <a href="<?=base_index();?>transaksi/tambah" class="btn btn-primary btn-flat"><i class="fa fa-plus"></i> Tambah</a>
                          <?php
                          } 
                       } 
}
?>  
                </section><!-- /.content -->
        
