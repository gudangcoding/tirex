
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage TRANSAKSI TIREX
                    </h1>
                       <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>transaksi-tirex">TRANSAKSI TIREX</a></li>
                        <li class="active">TRANSAKSI TIREX List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                  <h3 class="box-title">List TRANSAKSI TIREX</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                  <?php
       foreach ($db->fetch_all("sys_menu") as $isi) {
                      if ($path_url==$isi->url) {
                          if ($role_act["insert_act"]=="Y") {
                    ?>
          <a href="<?=base_index();?>transaksi-tirex/tambah" class="btn btn-success btn-flat"><i class="fa fa-plus"></i> Tambah Order</a>
                          <?php
                          } 
                       } 
}
?>  <hr>
                                    <table id="dtb_manual" class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                          <th>No</th>
                          <th>No Resi</th>
													<th>Tanggal Pickup</th>
													<th>Customer</th>
													<th>Dari</th>
													<th>Tujuan</th>
                          <th>Action</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $dtb=$db->fetch_custom("select * from pengiriman ");
      
      $i=1;
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$i;?></td>
        <td><b><?=$isi->no_resi;?></b></td>
        <td><?=tgl_indo($isi->tgl_pickup);?></td>
        <td><?=$db->fetch_single_row("sys_users","id",$isi->nama_pengirim)->last_name;?></td>
        <td><?=$isi->dari;?></td>
        <td><?=$isi->tujuan;?></td>

        <td>
        <a href="<?=base_index();?>transaksi-tirex/detail/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a> 
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'transaksi-tirex/edit/'.$isi->id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>  
        <?=($role_act["del_act"]=="Y")?'<button class="btn btn-danger hapus btn-flat" data-uri="'.base_admin().'modul/transaksi_tirex/transaksi_tirex_action.php" data-id="'.$isi->id.'"><i class="fa fa-trash-o"></i></button>':"";?>
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
        
                </section><!-- /.content -->
        
