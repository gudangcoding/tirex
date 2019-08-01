
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage TARIF CARGO MURAH
                    </h1>
                       <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tarif-cargo-murah">TARIF CARGO MURAH</a></li>
                        <li class="active">TARIF CARGO MURAH List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                  <h3 class="box-title">List TARIF CARGO MURAH</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table id="dtb_manual" class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                           <th style="width:25px" align="center">No</th>
                          <th>kelompok</th>
													<th>kota_tujuan</th>
													<th>tarif</th>
													<th>harga_balik</th>
													<th>minimal</th>
													<th>lead_time</th>
													<th>keterangan</th>
													
                          <th>Action</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <?php 
      $dtb=$db->fetch_custom("select tarif_cargo_murah.kelompok,tarif_cargo_murah.kota_tujuan,tarif_cargo_murah.tarif,tarif_cargo_murah.harga_balik,tarif_cargo_murah.minimal,tarif_cargo_murah.lead_time,tarif_cargo_murah.keterangan,tarif_cargo_murah.id from tarif_cargo_murah ");
      $i=1;
      foreach ($dtb as $isi) {
        ?><tr id="line_<?=$isi->id;?>">
        <td align="center"><?=$i;?></td><td><?=$isi->kelompok;?></td>
<td><?=$isi->kota_tujuan;?></td>
<td><?=$isi->tarif;?></td>
<td><?=$isi->harga_balik;?></td>
<td><?=$isi->minimal;?></td>
<td><?=$isi->lead_time;?></td>
<td><?=$isi->keterangan;?></td>

        <td>
        <a href="<?=base_index();?>tarif-cargo-murah/detail/<?=$isi->id;?>" class="btn btn-success btn-flat"><i class="fa fa-eye"></i></a> 
        <?=($role_act["up_act"]=="Y")?'<a href="'.base_index().'tarif-cargo-murah/edit/'.$isi->id.'" class="btn btn-primary btn-flat"><i class="fa fa-pencil"></i></a>':"";?>  
        <?=($role_act["del_act"]=="Y")?'<button class="btn btn-danger hapus btn-flat" data-uri="'.base_admin().'modul/tarif_cargo_murah/tarif_cargo_murah_action.php" data-id="'.$isi->id.'"><i class="fa fa-trash-o"></i></button>':"";?>
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
          <a href="<?=base_index();?>tarif-cargo-murah/tambah" class="btn btn-primary btn-flat"><i class="fa fa-plus"></i> Tambah</a>
                          <?php
                          } 
                       } 
}
?>  
                </section><!-- /.content -->
        
