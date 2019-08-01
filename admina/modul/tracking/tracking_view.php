
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage TRACKING
                    </h1>
                       <ol class="breadcrumb">
                        <li><a href="<?=base_index();?>"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="<?=base_index();?>tracking">TRACKING</a></li>
                        <li class="active">TRACKING List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                  <h3 class="box-title">List TRACKING</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table id="dtb_manual" class="table table-bordered table-striped">
                                   <thead>
                                     <tr>
                           <th style="width:25px" align="center">No</th>
                          <th>no resi</th>
													
                          <th>Action</th>
                         
                        </tr>
                                      </thead>
                                        <tbody>
                                         <tr>
                                           <td>1</td>
                                           <td>12345</td>
                                           <td><a href="<?=base_index();?>tracking/edit/<?=$isi->id;?>" class="btn btn-danger btn-flat"><i class="fas fa-shipping-fast"></i></a> </td>
                                         </tr> 
     
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
  
                </section><!-- /.content -->
        
