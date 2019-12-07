<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Data Penerapi</title>
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
		        Data Penerapi
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('terapis.index') }}">Data Penerapi</a></li>
		        <li class="active">Edit Data Penerapi</li>
		      </ol>
		    </section>

		    <section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-header">
									<div class="box-header">
										<h5 class="box-title">Edit data penerapi klinik Nurul Nabawi Al-Kautsar</h5>
									</div>
									<div class="box-body">
										@include('nurul_nabawi/validation')
										<form action="{{ url('/terapis') }}/{{ $terapiss->id_terapis }}" method="post">
											<div>
												<label>No.ID</label>
												<input class="form-control" type="text" name="no_id" value="{{ $terapiss->no_id }}" required="">
											</div><br>
											<div>
												<label>Nama</label>
												<input class="form-control" type="text" name="nama_terapis" value="{{ $terapiss->nama_terapis }}" required="">
											</div><br>
											<div>
												<label>Alamat</label>
												<textarea class="form-control" name="alamat" cols="80" rows="3" required="">{{ $terapiss->alamat }}</textarea>
												<!-- <input class="form-control" type="text" name="alamat" value="{{ $terapiss->alamat }}" required=""> -->
											</div><br>
											<div>
												<label>No Telepon</label>
												<input class="form-control" type="text" name="telp" value="{{ $terapiss->telp }}" required="">
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