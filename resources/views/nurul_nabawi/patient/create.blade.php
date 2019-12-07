<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Tambah Pasien</title>
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
		        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('patient.index') }}">Data Pasien</a></li>
		        <li class="active">Tambah Data Pasien</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Tambah data pasien klinik Nurul Nabawi Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	@include('nurul_nabawi/notification')
					            	<form action="{{ url('/patient') }}" method="post">
					            		<div>
											<label>NIP</label>
											<input required="" class="form-control" type="text" name="nip">
										</div><br>
										<div>
											<label>Nama</label>
											<input required="" class="form-control" type="text" name="nama_pasien">
										</div><br>
										<div>
											<label>Jenis Kelamin</label>
											<select class="form-control" name="id_gender">
												<option>- Jenis Kelamin -</option>
												@foreach($genders as $gender)
												<option value="{{$gender->id_gender}}">{{$gender->nama_gender}}</option>
												@endforeach
											</select>
											<!-- <input required="" type="radio" name="jk" value="laki-laki" checked> Laki-laki
											<span style="padding-left: 20px"></span>
											<input type="radio" name="jk" value="perempuan"> Perempuan -->
										</div><br>
										<div>
											<label>Tanggal Lahir</label>
											<input class="form-control" type="date" name="tgl_lahir">
										</div><br>
										<div>
											<label>Tanggal Daftar</label>
											<input required="" class="form-control" type="date" name="tgl_daftar" value="<?=date('Y-m-d')?>">
										</div><br>
										<div>
											<label>Agama</label>
											<select class="form-control" name="id_agama">
												<option>- Pilih Agama -</option>
												@foreach($agamas as $agama)
												<option value="{{$agama->id_agama}}">{{$agama->nama_agama}}</option>
												@endforeach
											</select>
										</div><br>
										<div>
											<label>Alamat</label>
											<textarea class="form-control" type="text" name="alamat" cols="80" rows="3"></textarea>
										</div><br>
										<div>
											<label>No Telepon</label>
											<input class="form-control" type="text" name="telp">
										</div><br><br>
										<div>
											<input class="btn btn-primary" type="submit" name="submit" value="Tambahkan">
											{{csrf_field()}}
											<input type="reset" class="btn btn-danger" value="Reset">
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
