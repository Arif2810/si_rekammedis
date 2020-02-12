<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Diagnosa</title>
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
		        Data Diagnosa
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('diagnosis.index') }}">Data Diagnosa</a></li>
		        <li class="active">Edit Data Diagnosa</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Edit data diagnosa klinik Nurul Nabawi | Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	@include('nurul_nabawi/notification')
					            	<form action="{{ url('/diagnosis') }}/{{ $diagnoses->id_diagnosa }}" method="post">
					            		<div>
											<label for="diagnosa">Diagnosa</label>
											<input class="form-control" id="diagnosa" type="text" name="nama_diagnosa" value="{{ $diagnoses->nama_diagnosa }}">
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