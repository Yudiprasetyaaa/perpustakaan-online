<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		 <title><?php echo $title; ?></title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="registration-container">
							<div class="center">
								<h1>
									<span class="blue">Sistem Perpustakaan</span>
								</h1>
								<h4 class="blue" id="id-company-text">MTsN 22 Jakarta</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<center>Daftarkan Akun</center>
											</h4>
											<form class="user" method="post" action="<?= base_url('web/do_register'); ?> ">
											

											<div class="space-6"></div>

											<?php echo form_open('web/login'); ?>
											<div class="form-group">
                 								<label>NISN</label>
                  								<input type="text" class="form-control" name="id_siswa" placeholder="Masukan NISN anda" required="required" >
                  							</div?>
											<div class="form-group">
                 								<label>Nama</label>
                  								<input type="text" class="form-control" name="nama" placeholder="Nama Lengkap" required="required" >
                  							</div?>
											<div class="form-group">
                 								<label>Email</label>
                  								<input type="text" class="form-control" name="email" placeholder="Email Aktif" required="required" >
                  							</div?>
											<div class="form-group">
                  								<label>Jenis Kelamin : </label>
                    							<div class="form-check form-check-inline">
                      								<label class="form-check-label">
                        								<input class="form-check-input" required="required" type="radio" name="jk" id="inlineRadio1" value="L"> Laki - Laki
                      								</label>
                      							<label class="form-check-label">
                        							<input class="form-check-input" required="required" type="radio" name="jk" id="inlineRadio2" value="P"> Perempuan
                      							</label>
                   							</div>
											<div class="form-group">
                  								<label>Nomor Telepon</label>
                  								<input type="text" maxlength="15" required="required" class="form-control" name="telp" placeholder="Masukan Nomor Telepon Aktif Anda" >
                  							</div>
            								<div class="form-group">
                								<label>Alamat</label>
                							<input type="name" class="form-control" name="alamat" placeholder="Alamat Saat Ini" required field>
            								</div>
            								<div class="form-group">
                								<label>Password</label>
                									<input type="password" class="form-control" name="password" placeholder="Password" required field>
            								</div>
            								<div class="form-group">
                								<label>Confirm Password</label>
                									<input type="password" class="form-control" name="password2" placeholder="Confirm Password" required field>
            								</div>
											<div class="form-group" required field>
                							<label>Agama</label>
                								<h6><select name="agama" id="agama" style="width:99px">
                									<option value="islam">Islam</option>
                									<option value="hindu">Hindu</option>
                									<option value="kristen">Kristen</option>
                									<option value="budha">Budha</option>
												</select>
											</div>
											<div class="form-group">
                 								<label>Status Siswa :</label>
                    									<div class="form-check form-check-inline">
                      										<label class="form-check-label">
                        										<input class="form-check-input" required="required" type="radio" name="stts" id="inlineRadio1" value="siswa"> Aktif
                      									</div>	</label>
                    						</div>
            								<div class="form-group" required field>
                							<label>Kelas</label>
                								<h6><select name="kelas" id="kelas" style="width:99px">
                									<option value="7A">7A</option>
                									<option value="7B">7B</option>
                									<option value="7C">7C</option>
                									<option value="7D">7D</option>
                									<option value="7E">7E</option>
                									<option value="7F">7F</option>
                									<option value="7G">7G</option>
                									<option value="8A">8A</option>
                									<option value="8B">8B</option>
                									<option value="8C">8C</option>
                									<option value="8D">8D</option>
                									<option value="8E">8E</option>
                									<option value="8F">8F</option>
                									<option value="8G">8G</option>
                									<option value="8H">8H</option>
                									<option value="9A">9A</option>
                									<option value="9B">9B</option>
                									<option value="9C">9C</option>
                									<option value="9D">9D</option>
                									<option value="9E">9E</option>
                									<option value="9F">9F</option>
                									<option value="9G">9G</option>
                									<option value="9H">9H</option>
              									</select>
           								    </div>
													<div class="text-Left">
       													<a class="small" href="<?= base_url('web/login'); ?> ">Masuk</a>
      												</div>

													<div class="clearfix">

														<button type="submit" class="width-35 pull-right btn btn-sm btn-success">
															<span class="bigger-110">Daftar</span>
					
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											 <?php echo form_close(); ?>

											

											<div class="space-6"></div>

										
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="<?php echo base_url(); ?>web/"  class="user-signup-link">
													Kembali ke situs
													<i class="ace-icon fa fa-arrow-left"></i>
												</a>
											</div>

											
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
							
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<?php echo base_url(); ?>assets/bootstrap/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo base_url(); ?>assets/bootstrap/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			 
			});
		</script>
	</body>
</html>
