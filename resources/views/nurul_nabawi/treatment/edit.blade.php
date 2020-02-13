<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Tindakan</title>
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
		        Data Tindakan
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('treatment.index') }}">Data Tindakan</a></li>
		        <li class="active">Edit Data tindakan</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Edit data tindakan klinik Nurul Nabawi Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	<form action="{{ url('/treatment') }}/{{ $treatments->id_tindakan }}" method="post">
					            		<div class="form-group">
											<label>Tindakan</label>
											<input class="form-control" type="text" name="nama_tindakan" value="{{ $treatments->nama_tindakan }}">
										</div>								
										<div class="form-group">
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

