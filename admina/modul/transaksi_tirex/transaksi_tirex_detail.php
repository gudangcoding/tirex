

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                      TRANSAKSI TIREX
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>transaksi-tirex">TRANSAKSI TIREX</a></li>
                        <li class="active">Edit TRANSAKSI TIREX</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-solid box-primary">
                                   <div class="box-header">
                                    <h3 class="box-title">Edit TRANSAKSI TIREX</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-info btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>

                  <div class="box-body">
                     <form id="update" method="post" class="form-horizontal" action="<?=base_admin();?>modul/transaksi_tirex/transaksi_tirex_action.php?act=up">
                 <table class="table transaksitirex">
                     <tr>
                       <td>
                        <fieldset>
                            <legend class="text-center">Detail Pengirim</legend>
                              <table class="table">
                                 <tr>
                                    <td>Nama Pengirim</td>
                                    <td>
                                      <select class="form-control chzn-select" id="customer" value="<?=$data_edit->customer;?>" readonly>
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
                                    <td><input type="date" class="form-control" id="tgl_pickup" readonly></td>
                                  </tr>
                                  <tr>
                                     <td>Dari</td>
                                    <td>
                                      <select name="dari" data-placeholder="Pilih dari..." class="form-control chzn-select" tabindex="2" readonly>
                                       <option value=""></option>
                                       <?php foreach ($db->fetch_all("tarif_tirex") as $isi) {

                                          if ($data_edit->dari==$isi->kota) {
                                            echo "<option value='$isi->kota' selected>$isi->kota</option>";
                                          } else {
                                          echo "<option value='$isi->kota'>$isi->kota</option>";
                                            }
                                       } ?>
                                      </select>
                                    </td>
                                                                     
                                  </tr>
                                  <tr>
                                    <td>Tujuan</td>
                                    <td><input type="text" class="form-control" name="harga" id="harga" value="<?=$db->fetch_single_row("tarif_cargo_murah","")->kota_tujuan;?>" readonly></td>  
                                  </tr>
                                  
                                  
                                  <tr>
                                    <td>Harga</td>
                                    <td>
                                      <input type="text" class="form-control" name="harga" id="harga" value="<?=$data_edit->harga;?>" readonly>
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
                                      <td><input type="text" id="penerima" class="form-control" value="<?=$data_edit->nama_penerima;?>" readonly></td>
                                      
                                    </tr>
                                    <tr>
                                      <td>Email</td>
                                      <td>
                                        <input type="text" id="email_penerima" class="form-control" value="<?=$data_edit->email_penerima;?>"readonly>
                                        <small>Untuk Notifikasi Tracking Kiriman</small>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>Telepon</td>
                                      <td><input type="text" id="telepon" class="form-control" value="<?=$data_edit->no_hp_penerima;?>" readonly></td>
                                    </tr>
                                    <tr>
                                    
                                    <tr>
                                      <td>Catatan</td>
                                      <td><input type="text" id="catatan" class="form-control" value="<?=$data_edit->catatan;?>" readonly></td>
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
                      <td colspan="3"><input type="text" id="alamat_pengambilan" class="form-control" value="<?=$data_edit->alamat_pengambilan;?>" readonly></td>
                    </tr>
                      <td width="200">Alamat Tujuan</td>
                        <td>
                          <input type="text" id="alamat_tujuan" class="form-control" value="<?=$data_edit->alamat_tujuan;?>" readonly>
                        </td>
                      </tr>
                  </table>
                  <button class="btn btn-success pull-right" id="simpantransaksi"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Simpan Transaksi</button>
                      
                    </form>
                    <a href="<?=base_index();?>transaksi-tirex" class="btn btn-warning btn-flat"><i class="fa fa-step-backward"></i> Kembali</a>
          
                  </div>
                  </div>
              </div>
</div>
</section><!-- /.content -->
<script type="text/javascript">
  $(document).ready(function() {

     
    /*untuk simpan transaksi*/
    $("#simpantransaksi").click(function(event) {
      //alert("Transaksi Berhasil Disimpan");
      var   customer            = $("#customer").val();
      var   tgl_pickup          = $("#tgl_pickup").val();
      var   dari                = $("#dari").val();
      var   layanan             = $("#layanan").val();
      var   tujuan              = $("#tujuan").val();
      var   penerima            = $("#penerima").val();
      var   email_penerima      = $("#email_penerima").val();
      var   telepon             = $("#telepon").val();
      var   catatan             = $("#catatan").val();
      var   alamat_pengambilan  = $("#alamat_pengambilan").val();
      var   alamat_tujuan       = $("#alamat_tujuan").val();
      var   layanan             = $("#layanan").val();

      $.ajax({
        url: '<?=base_admin();?>modul/marketing_order/transaksi_tirex_action.php?act=in',
        type: 'POST',
        dataType: 'json',
        data: {
          customer          : customer,
          tgl_pickup        : tgl_pickup,
          dari              : dari,
          layanan           : layanan,
          tujuan            : tujuan,
          penerima          : penerima,
          email_penerima    : email_penerima,
          telepon           : telepon,
          catatan           : catatan,
          alamat_pengambilan: alamat_pengambilan,
          alamat_tujuan     : alamat_tujuan,
          layanan           : layanan,
        },

        success : function (response) {
          if (response=='sukses') {
            alert("Transaksi Berhasil Disimpan");
          }
          
        }
      }); //ajax
      
    });//simpantransaksi


    /*untuk simpan user baru*/
    $("#simpanuser").click(function(event) {
      $.ajax({
        type: "POST",
        url: "<?=base_admin();?>modul/marketing_order/transaksi_tirex_action.php?act=userbaru",
        dataType: "json",
        data: {
          first_name        : $("#first_name").val(),
          last_name         : $("#last_name").val(),
          alamat_customer   : $("#alamat_customer").val(),
          telepon_customer  : $("#telepon_customer").val(),
          username          : $("#username").val(),
          password_baru     : $("#password_baru").val(),
          email             : $("#email").val(),
        },
        
        success: function (response) {
          if(response=='sukses'){
            $('.notif_top').fadeIn(1000);
            $(".notif_top").fadeOut(1000);
          }
        }
      });
      
      //alert('tes');
     });

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
        
 