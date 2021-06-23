
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/select2/select2.min.css">
<!--content -->
<div class="box box-solid box-success">
  <div class="box-header with-border">
    <h3 class="box-title"><i class="fa fa-pencil"></i> <i class="fa fa-book"></i>Edit Siswa</h3>
    <div class="box-tools pull-right">
    </div><!-- /.box-tools -->
  </div><!-- /.box-header -->
   <div class="box-body">

   	<?php if(!empty(validation_errors())){
   			echo '<div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                <p>Inputan tidak terisi dengan benar. Cek kembali</p>';
                echo validation_errors();
             echo '</div>';

   	}?>
    <!--show error message here -->
    <div class="form-group"></div>
	<form class="form-horizontal" method="post"  action="<?php echo base_url(); ?>petugas/Anggota/update" role="form">
              <div class="box-body">
                <div class="form-group">
                  <label class="col-sm-2 control-label">Username</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['id_siswa'];?>"  disabled=disabled class="form-control" name="id_siswa" placeholder="Username" >
                     <input type="hidden" value="<?php echo $id_siswa['id_siswa'];?>"  name="id_siswa" >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Nama</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['nama'];?>"  class="form-control" name="nama" placeholder="Nama Lengkap" >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Email</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['email'];?>"  class="form-control" name="email" placeholder="Email" >
                  </div>
                </div>
                 <div class="form-group">
                  <label class="col-sm-2 control-label">jenis Kelamin</label>
                  <div class="col-sm-3">
                    <div class="col-sm-10">
                    <!--input type="radio" class="form-control" name="gender" id="inputEmail3" placeholder="Jenis Kelamin"-->
                    <div class="form-check form-check-inline">
                      <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="jk" <?php echo ($id_siswa['jk']=="L")?'checked':''?> id="inlineRadio1" value="L"> Laki - Laki
                      </label>
                    </div>
                    <div class="form-check form-check-inline">
                      <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="jk" <?php echo ($id_siswa['jk']=="P")?'checked':''?> id="inlineRadio2" value="P"> Perempuan
                      </label>
                    </div>
                  </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Kelas</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['kelas'];?>"  class="form-control" name="kelas" placeholder="kelas" >
                  </div>
		      		  </div>
              </div>
              <div class="form-group">
                  <label class="col-sm-2 control-label">Agama</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['agama'];?>"  class="form-control" name="agama" placeholder="Agama" >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Nomor Telepon</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['telp'];?>"  class="form-control" name="telp" placeholder="Nomor Telepon" >
                  </div>
		      		  </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Alamat</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo $id_siswa['alamat'];?>"  class="form-control" name="alamat" placeholder="Alamat" >
                  </div>
		      		  </div>
                
              </div>
              <div class="col-sm-4">
              </div>

              <!-- /.box-footer -->
            </form>

  </div>
  <div class="box-footer">
  <td>
  <div class="col-sm-4">
                  <div class="btn-group">
                   <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
				      </div>
                   <div class="btn-group">
                   <button type="submit" class="btn btn-info"><i class="fa fa-pencil"></i> Update</button>
                  </div>
              </div>
    <div align ="Right"> <a  href="<?php echo base_url(); ?>petugas/Anggota"  class="btn btn-danger" role="button" data-toggle="tooltip" title="Kembali"></i>Back</a></div>
  </td>
  </div>

