 <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
     Marketing Order
    </h1>
           <ol class="breadcrumb">
        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=base_index();?>marketing-order">Marketing Order</a></li>
        <li class="active">Form Marketing Order</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
<div class="row">
    <div class="col-lg-12"> 
        <div class="box box-solid box-success box-solid">
                                 <div class="box-header">
                                    <ul class="nav nav-tabs" role="tablist">
                                      <li class="nav-item">
                                        <a class="nav-link btn btn-warning" href="#ro" role="tab" data-toggle="tab">CUSTOMER RO</a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link btn btn-warning" href="#new" role="tab" data-toggle="tab">NEW CUSTOMER</a>
                                      </li>
                                    </ul>
                                </div>

                  <div class="box-body">
                    
                    <!-- Tab panes -->
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane fade in active" id="ro">
                   <table class="table transaksitirex">
                     <tr>
                       <td>
                        <fieldset>
                            <legend class="text-center">Detail Pengirim</legend>
                              <table class="table">
                                 <tr>
                                    <td>Nama Pengirim</td>
                                    <td>
                                      <select class="form-control chzn-select" id="customer">
                                        <option>Customer</option>
                                        <?php 
                                          foreach ($db->fetch_custom("SELECT * FROM sys_users WHERE id_group='6'") as $trx) {
                                            echo "<option value='$trx->id'>$trx->first_name | $trx->last_name</option>";
                                          }
                                        ?>
                                      </select>
                                    </td>
                                  </tr>
                                  <tr>
                                     <td>Tanggal Pickup</td>
                                    <td><input type="date" class="form-control" id="tgl_pickup"></td>
                                  </tr>
                                  <tr>
                                     <td>Dari</td>
                                    <td>
                                      <select class="form-control chzn-select" id="dari">
                                        <option>Pilih Asal</option>
                                        <option value='Jakarta'>JAKARTA</option>
                                        <?php 
                                          foreach ($db->fetch_all("tarif_cargo_murah") as $trx) {
                                            echo "<option value='$trx->kota_tujuan'>$trx->kota_tujuan</option>";
                                          }
                                        ?>
                                      </select>
                                    </td>
                                                                     
                                  </tr>
                                  <tr>
                                    <td>Tujuan</td>
                                    <td>
                                      <select class="form-control chzn-select" id="tujuan">
                                        <option>Pilih Tujuan</option>
                                        <option value='Jakarta'>JAKARTA</option>
                                        <?php 
                                          foreach ($db->fetch_all("tarif_cargo_murah") as $trx) {
                                            echo "<option value='$trx->kota_tujuan'>$trx->kota_tujuan</option>";
                                          }
                                        ?>
                                      </select>
                                    </td>  
                                  </tr>
                                  
                                  
                                  <tr>
                                    <td>Harga</td>
                                    <td>
                                      <input type="text" class="form-control" name="harga" id="harga" value="">
                                    </td>
                                    
                                  </tr>
                                  
                               </table>
                            </fieldset>
                       </td>
                       <!-- Detail Penerima -->
                       <td>
                        <fieldset>
                            <legend class="text-center">Detail Penerima</legend>
                                <table class="table">
                                    <tr>
                                      <td>Nama Penerima</td>
                                      <td><input type="text" id="penerima" class="form-control"></td>
                                      
                                    </tr>
                                    <tr>
                                      <td>Email</td>
                                      <td>
                                        <input type="text" id="email_penerima" class="form-control">
                                        <small>Untuk Notifikasi Tracking Kiriman</small>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>Telepon</td>
                                      <td><input type="text" id="telepon" class="form-control"></td>
                                    </tr>
                                    <tr>
                                    
                                    <tr>
                                      <td>Catatan</td>
                                      <td><input type="text" id="catatan" class="form-control"></td>
                                    </tr>
                                  </table>
                                        

                               </td>
                             </tr>
                         </table>
                       </td>
                     </tr>
                    
                   </table>
                  <table class="table">
                    <tr>
                      <td width="200">Alamat Pengambilan</td>
                      <td colspan="3"><input type="text" id="alamat_pengambilan" class="form-control"></td>
                    </tr>
                      <td width="200">Alamat Tujuan</td>
                        <td>
                          <input type="text" id="alamat_tujuan" value="" class="form-control">
                        </td>
                      </tr>
                  </table>
                  <button class="btn btn-success pull-right" id="simpantransaksi"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Simpan Transaksi</button>
                   
                      
                 
 <a href="<?=base_index();?>transaksi-tirex" class="btn btn-warning btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
                  </div>





                  <!-- ================================tab New Customer ===================================================================================== -->

                  <div role="tabpanel" class="tab-pane fade" id="new">
                    <form id="input" method="post" class="form-horizontal" action="<?=base_admin();?>modul/transaksi_tirex/transaksi_tirex_action.php?act=userbaru">
                      <table class="table">
                        <tr>
                          <td>Nama Lengkap</td>
                          <td><input type="text" id="first_name" name="first_name" placeholder="First Name" class="form-control" required> </td>
                          <td>Nama Perusahaan</td>
                          <td><input type="text" id="last_name" name="last_name" placeholder="Last Name" class="form-control" > </td>
                        </tr>
                        <tr>
                          <td>Alamat Customer</td>
                          <td><input type="text" id="alamat_customer" name="alamat_customer" placeholder="alamat perusahaan" class="form-control" required> </td>
                          <td>Telepon Perusahaan</td>
                          <td><input type="text" id="telepon_customer" name="telepon_customer" placeholder="telepon_customer" class="form-control" > </td>
                        </tr>
                        <tr>
                          <td>Username</td>
                          <td><input type="text" id="username" name="username" placeholder="Username" class="form-control" > </td>
                          <td>Password</td>
                          <td><input type="password" id="password_baru" name="password_baru" placeholder="Password" class="form-control" > </td>
                        </tr>
                      
                        <tr>
                          <td>Konfirmasi Password</td>
                          <td><input type="password" id="password_confirm" name="password_confirm" placeholder="Password" class="form-control" > </td>
                           <td>Email</td>
                          <td><input type="text" id="email" data-rule-email="true" name="email" placeholder="Email" class="form-control" ></td>
                        </tr>
                       <tr>
                        <td>Status Customer</td>
                        <td>
                        <input name="aktif" class="make-switch" type="checkbox" checked>
                        </td>
                       </tr>
                      </table>
                       <button class="btn btn-success pull-right" id="simpanuser"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Tambah Customer</button>
                    </form>
                        <a href="<?=base_index();?>transaksi-tirex" class="btn btn-warning">Kembali</a>

                  </div>
                </div>
                     
          
                  </div>
                  </div>
              </div>
</div>
                  
</section><!-- /.content -->

<script type="text/javascript">
  $(document).ready(function() {

     
    /*untuk simpan transaksi*/
    $("#simpantransaksi").click(function(event) {
      alert("Transaksi Berhasil Disimpan");
      var   customer            = $("#customer").val();
      var   tgl_pickup          = $("#tgl_pickup").val();
      var   dari                = $("#dari").val();
      var   tujuan              = $("#tujuan").val();
      var   penerima            = $("#penerima").val();
      var   email_penerima      = $("#email_penerima").val();
      var   telepon             = $("#telepon").val();
      var   catatan             = $("#catatan").val();
      var   alamat_pengambilan  = $("#alamat_pengambilan").val();
      var   alamat_tujuan       = $("#alamat_tujuan").val();
      var   layanan             = $("#layanan").val();
      var   harga               = $("#harga").val();
      var   catatan             = $("#catatan").val();

      $.ajax({
        url: '<?=base_admin();?>modul/transaksi_tirex/transaksi_tirex_action.php?act=in',
        type: 'POST',
        dataType: 'json',
        data: {
          customer          : customer,
          tgl_pickup        : tgl_pickup,
          dari              : dari,
          tujuan            : tujuan,
          penerima          : penerima,
          email_penerima    : email_penerima,
          telepon           : telepon,
          catatan           : catatan,
          alamat_pengambilan: alamat_pengambilan,
          alamat_tujuan     : alamat_tujuan,
          layanan           : layanan,
          harga             : harga,
          catatan           : catatan,
        },

        success : function (response) {
          if (response=='sukses') {
            alert("Transaksi Berhasil Disimpan");
          }
          
        }
      }); //ajax
      
    });//simpantransaksi


    
    //tampil harga
     $("#tujuan").change(function(event) {
       
        $.ajax({
          url: '<?=base_admin();?>modul/transaksi_tirex/transaksi_tirex_action.php?act=tarif',
          type: 'POST',
          dataType: 'json',
          data: {kode_kota: $("#tujuan").val()},
          success : function (data) {
            $("#harga").val(data[0].tarif);
          }
        });
     });

});//akhir ready
</script>


        
            