
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
  <p>Klik Tombol Merah Untuk Memilih Ops Lapangan | Order Yang sudah Belum Diproses Berwarana Orange</p>
  <p>Order Sudah Diproses Berwarna Hijau</p>
  <hr>
                                    <table id="dtb_manual" class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                          <th>No</th>
                          <th>No Resi</th>
                          <th>Tanggal Pickup</th>
                          <th>Customer</th>
                          <th>Tujuan</th>
                          <th>Action</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $dtb=$db->fetch_custom("select * from pengiriman ");
      
      $i=1;
      foreach ($dtb as $isi) {
        $cus = $db->fetch_single_row("sys_users","id",$isi->nama_pengirim);
        $kot = $db->fetch_single_row("tarif_cargo_murah","id",$isi->tujuan);
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$i;?></td>
        <td><b><?=$isi->no_resi;?></b></td>
        <td><?=tgl_indo($isi->tgl_pickup);?></td>
        <td><?=$cus->last_name;?></td>
        <td><?=$kot->kota_tujuan;?></td>

        <td>
          <?php 
            if($isi->driver==NULL){
          ?>
        <a title="Tambah Muatan" href="<?=base_index();?>tirex-cso/edit/<?=$isi->id;?>" class="btn btn-warning btn-flat blink"><i class="fa fa-users"></i></a> 
        <?php }else{ ?>

          <a title="Tambah Muatan" href="<?=base_index();?>tirex-cso/edit/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-users"></i></a> 
        <?php }?>
        
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
        
