<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Pasien</title>
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
		        Data Pasien
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('patient.index') }}">Data Pasien</a></li>
		        <li class="active">Edit Data Pasien</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Edit data pasien klinik Nurul Nabawi Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	{!! Form::model($patients,['route'=>['patient.update',$patients->id_pasien],'method'=>'PUT']) !!}
				            		<div class="form-group">
										<label>NIP</label>
										<input class="form-control" type="text" name="nip" value="{{ $patients->nip }}">
									</div>
									<div class="form-group">
										<label>Nama</label>
										<input class="form-control" type="text" name="nama_pasien" value="{{ $patients->nama_pasien }}">
									</div>
									<div class="form-group">
										<label>Jenis Kelamin</label>
										{{ Form::select('id_gender', \App\Gender::pluck('nama_gender', 'id_gender'), NULL, ['class'=>'form-control']) }}
									</div>
									<div class="form-group">
										<label>Tanggal Lahir</label>
										<input class="form-control" type="date" name="tgl_lahir" value="{{ $patients->tgl_lahir }}">
									</div>
									<div class="form-group">
										<label>Tanggal Daftar</label>
										<input class="form-control" type="date" name="tgl_daftar" value="{{ $patients->tgl_daftar }}">
									</div>
									<div class="form-group">
										<label>Agama</label>
										{{ Form::select('id_agama', \App\Agama::pluck('nama_agama', 'id_agama'), NULL, ['class'=>'form-control']) }}
									</div>
									<div class="form-group">
										<label>Alamat</label>
										<textarea class="form-control" name="alamat" cols="80" rows="3">{{ $patients->alamat }}</textarea>
										<!-- <input class="form-control" type="text" name="alamat" value="{{ $patients->alamat }}"> -->
									</div>
									<div class="form-group">
										<label>No Telepon</label>
										<input class="form-control" type="text" name="telp" value="{{ $patients->telp }}">
									</div>
									<div class="form-group">
										<input class="btn btn-primary" type="submit" name="submit" value="Simpan">
										<input type="reset" class="btn btn-danger" value="Reset">
										{{csrf_field()}}
										<input type="hidden" name="_method" value="PUT">
									</div>
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
