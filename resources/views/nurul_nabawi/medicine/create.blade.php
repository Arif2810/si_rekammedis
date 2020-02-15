<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

	  	<header class="main-header">
	  		@include('templates.header')
	  	</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<title>Tambah Data Obat</title>
			@include('templates.sidebar')
		</aside>

  		<!-- Content Wrapper. Contains page content -->
	  	<div class="content-wrapper">
		    <!-- Content Header (Page header) -->
		    <section class="content-header">
		      <h1>
		        Data Obat
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('medicine.index') }}">Data Obat</a></li>
		        <li class="active">Tambah Data Obat</li>
		      </ol>
		    </section>

		    <section class="content">
	      	<div class="row">
	        	<div class="col-xs-12">
          		<div class="box">
            		<div class="box-header">
            			<div class="box-header">
			              <h5 class="box-title">Tambah data obat klinik Nurul Nabawi Al-Kautsar</h5>
			            </div>
			            <div class="box-body">
			            	@include('nurul_nabawi/validation')
			            	@include('nurul_nabawi/notification')
			            	<form action="{{ url('/medicine') }}" method="post">
			            		<div class="form-group">
												<label>Nama Obat</label>
												<input class="form-control" type="text" name="nama_obat">
											</div>
											<div class="form-group">
												<label>Deskripsi</label>
												<textarea class="form-control" name="deskripsi" type="text"></textarea>
											</div>
											<div class="form-group">
												<label>stok</label>
												<input class="form-control" type="number" name="stok">
											</div>
											<div class="form-group">
												<input class="btn btn-primary" type="submit" name="submit" value="Tambahkan">
												{{csrf_field()}}
												<a href="{{ route('medicine.index') }}" class="btn btn-danger"><i class="fa fa-arrow-circle-left"></i> Kembali</a>
											</div>
			            	</form>
			            </div>
            		</div>
	        		</div>
	    			</div>
					</div>
				</section>
			</div>
			<!-- /.content-wrapper -->

		<footer class="main-footer">
  		@include('templates.footer')
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			@include('templates.control_sidebar')
		</aside>
	</div>
@include('templates.scripts')
</body>
</html>