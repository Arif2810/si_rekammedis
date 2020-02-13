<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Edit Rekam Medis</title>

	<style type="text/css">
		.content img{
			width: 80px;
			margin-bottom: 5px;
		}
	</style>

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
		        Data Rekam Medis Pasien
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('medical_record.index') }}">Data Rekam Medis Pasien</a></li>
		        <li class="active">Edit Data Rekam Medis Pasien</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">

	            			<div class="box-header">
				              <h5 class="box-title">Edit data rekam medis pasien klinik Nurul Nabawi Al-Kautsar</h5>
				            </div>
				            <div class="box-body">
				            	{!! Form::model($medical_records,['route'=>['medical_record.update',$medical_records->id_mr],'method'=>'PUT', 'enctype'=>'multipart/form-data']) !!}

				            	<div class="row">
				            		<div class="col-xs-6">
				            			<div class="form-group">
											<label>Tanggal Periksa</label>
											<input class="form-control" type="date" name="tgl_periksa" value="{{ $medical_records->tgl_periksa }}">
										</div>
										<div class="form-group">
											{{ Form::label ('id_pasien', "Nama Pasien") }}
											{{ Form::select('id_pasien', \App\Patient::pluck('nama_pasien', 'id_pasien'), NULL, ['class'=>'form-control', 'id'=>'pasien']) }}
										</div>
										<div class="form-group">
											<label for="riwayat">Riwayat Penyakit</label>
											<textarea class="form-control" name="riwayat" id="riwayat" cols="80" rows="3">{{ $medical_records->riwayat }}</textarea>
											<!-- <input class="form-control" type="text" name="riwayat" value="{{ $medical_records->riwayat }}"> -->
										</div>
										<div class="form-group">
											<label for="keluhan">Keluhan</label>
											<textarea class="form-control" name="keluhan" id="keluhan" cols="80" rows="3">{{ $medical_records->keluhan }}</textarea>
										</div>
										<div class="form-group">
											<label for="check">Pemeriksaan</label>
											<textarea class="form-control" name="check" id="check" cols="80" rows="3">{{ $medical_records->check }}</textarea>
										</div>
				            		</div>
				            		@if(Auth::user()->akses == 'admin')
					            		<div class="col-xs-6">								            		
											<div class="form-group">
												{{ Form::label ('id_obat', "Obat") }}
												{{ Form::select('medicines[]', \App\Medicine::pluck('nama_obat', 'id_obat'), NULL, ['class'=>'form-control', 'id'=>'obat', 'multiple'=>'multiple']) }}						
											</div>
											<div class="form-group">
												<label for="resep">Resep</label>
												<textarea class="form-control" name="resep" id="resep" cols="80" rows="3">{{ $medical_records->resep }}</textarea>
											</div>							
											<div class="form-group">
												<label for="ket">Keterangan</label>
												<textarea class="form-control" name="ket" id="ket" cols="80" rows="3">{{ $medical_records->ket }}</textarea>
											</div>
											<div class="form-group">
												{{ Form::label ('id_tindakan', "Tindakan") }}
												{{ Form::select('treatments[]', \App\Treatment::pluck('nama_tindakan', 'id_tindakan'), NULL, ['class'=>'form-control', 'id'=>'tindakan', 'multiple'=>'multiple']) }}
											</div>
					            		</div>
				            		@endif
				            	</div>

				            	<div class="row">
				            		<div class="col-xs-6">
				            			<div class="form-group">
											<label>Diagnosa</label>
											{{ Form::select('id_diagnosa', \App\Diagnosis::pluck('nama_diagnosa', 'id_diagnosa'), NULL, ['class'=>'form-control', 'id'=>'diagnosa']) }}
											@if(Auth::user()->akses !== 'admin')
												<small style="color: salmon;"><em>pilih</em> "Tidak ada"!</small>
											@endif
										</div>
				            			<div class="form-group">
										<label>File</label><br>
										<img src="{{asset('image/'.$medical_records->image)}}" alt="gambar">
										<input type="file" name="image" value="{{ $medical_records->image }}" class="form-control" style="margin-bottom: 10px;">
										<img src="{{asset('image/'.$medical_records->image2)}}" alt="gambar">
										<input type="file" name="image2" value="{{ $medical_records->image2 }}" class="form-control">
									</div>
				            		</div>
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
