<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Jabatan</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

	  	<header class="main-header">
	  		@include('templates.header')
	  	</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			@include('templates.sidebar')
		</aside>

  		<!-- Content Wrapper. Contains page content -->
	  	<div class="content-wrapper">
		    <!-- Content Header (Page header) -->
		    <section class="content-header">
		      <h1>
		        Data Jabatan
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('position.index') }}">Data Jabatan</a></li>
		        <li class="active">Edit Data Jabatan</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Edit data jabatan klinik Nurul Nabawi Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	<form action="{{ url('/position') }}/{{ $positions->id_jabatan }}" method="post">
					            		<div>
											<label>Jabatan</label>
											<input class="form-control" type="text" name="nama_jabatan" value="{{ $positions->nama_jabatan }}">
										</div><br><br>								
										<div>
											<input class="btn btn-primary" type="submit" name="submit" value="Simpan">
											<input type="reset" class="btn btn-danger" value="Reset">
											{{csrf_field()}}
											<input type="hidden" name="_method" value="PUT">
										</div>
					            	</form>
					            </div>
		            		</div>
		        		</div>
		    		</div>
				</div>
			</section>
		</div>
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