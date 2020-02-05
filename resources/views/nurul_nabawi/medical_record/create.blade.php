<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
	<title>Tambah Rekam Medis</title>
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
			Data Rekam Medis
			<small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
			<li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="{{ route('patient.index') }}">Data Rekam Medis</a></li>
			<li class="active">Tambah Data Rekam Medis</li>
			</ol>
		</section>

		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h5 class="box-title">Tambah data rekam medis klinik Nurul Nabawi Al-Kautsar</h5>
						</div>
						<div class="box-body">
							@include('nurul_nabawi/validation')
							@include('nurul_nabawi/notification')
							<form action="{{ url('/medical_record') }}" method="post" enctype="multipart/form-data">

								<div class="row">
									<div class="col-xs-6">
										
										<div>
											<label for="tgl_periksa">Tanggal Periksa</label>
											<input required="" class="form-control" type="date" name="tgl_periksa" id="tgl_periksa" value="<?=date('Y-m-d')?>">
										</div><br>
										<div>
											<label for="pasien">Nama Pasien</label>
											<select required="" class="form-control" name="id_pasien" id="pasien">
												<option></option>
												@foreach($patients as $patient)
												<option value="{{$patient->id_pasien}}">{{$patient->nama_pasien}}</option>
												@endforeach
											</select>
										</div><br>
										<div>
											<label for="riwayat">Riwayat Penyakit</label>
											<textarea class="form-control" type="text" name="riwayat" id="riwayat" cols="80" rows="3"></textarea>
										</div><br>
										<div>
											<label for="keluhan">Keluhan</label>
											<textarea required="" class="form-control" type="text" name="keluhan" id="keluhan" cols="80" rows="3"></textarea>
										</div><br>
										<div class="form-group">
											<label for="check">Pemeriksaan</label>
											<textarea class="form-control" type="text" name="check" id="check" cols="80" rows="3"></textarea>
										</div>									
									</div>

									@if(Auth::user()->akses == 'admin')
									<div class="col-xs-6">									
										<div class="form-group">
											<label for="tindakan">Tindakan</label>
											<select multiple="multiple" size="3" class="form-control" name="treatments[]" id="tindakan">
												<option></option>
												@foreach($treatments as $treatment)
												<option value="{{$treatment->id_tindakan}}">{{$treatment->nama_tindakan}}</option>
												@endforeach
											</select>
										</div>
										<div class="form-group">
											<label for="obat">Obat</label>
											<select multiple="multiple" size="3" class="form-control" name="medicines[]" id="obat">
												<option></option>
												@foreach($medicines as $medicine)
												<option value="{{$medicine->id_obat}}">{{$medicine->nama_obat}}</option>
												@endforeach
											</select>
										</div>
										<div class="form-group">
											<label for="resep">Resep</label>
											<textarea class="form-control" type="text" name="resep" id="resep" cols="80" rows="3"></textarea>
										</div>
										<div class="form-group">
											<label for="ket">Keterangan</label>
											<textarea class="form-control" type="text" name="ket" id="ket" cols="80" rows="3"></textarea>
										</div>										
									</div>
									@endif
								</div>

								<div class="row">
									<div class="col-xs-6">
										<div class="form-group">
											<label for="diagnosa">Diagnosa</label>
											<select required="" class="form-control" name="id_diagnosa" id="diagnosa">
												<option></option>
												@foreach($diagnoses as $diagnosis)
												<option value="{{$diagnosis->id_diagnosa}}">{{$diagnosis->nama_diagnosa}}</option>
												@endforeach
											</select>
											@if(Auth::user()->akses !== 'admin')
												<small style="color: salmon;"><i>pilih</i> "Tidak ada"!</small>
											@endif
										</div>
										<div class="form-group">
											<label>Upload File</label>
								            <input type="file" name="image" value="" class="form-control">
								            <small style="color: salmon">file yang di upload berformat jpg, jpeg, png</small>
							            </div>
									</div>
								</div>

									<div class="form-group">
										<input class="btn btn-primary" type="submit" name="submit" value="Tambahkan">
										{{csrf_field()}}
										<input type="reset" class="btn btn-danger" value="Reset">
									</div>

							</form>
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

	<script type="text/javascript">
	    $("#pasien").select2({
	    	placeholder:'Pilih Pasien'
	    });
	    $("#diagnosa").select2({
	    	placeholder:'Diagnosa'
	    });
	    $("#obat").select2({
	    	placeholder:'Pilih Obat'
	    });
	    $("#tindakan").select2({
	    	placeholder:'Tindakan'
	    });
	</script>

	
</body>
</html>
