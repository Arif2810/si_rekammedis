<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
  <title>Detail Rekam Medis</title>
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
        <li><a href="{{ url('/medical_record') }}"> Data rekam medis</a></li>
        <li class="active">Detail data rekam medis</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box" style="padding: 0 30px">
            <div class="box-header">
              <h3 class="box-title">Detail data rekam medis klinik Nurul Nabawi Al-Kautsar</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div>
                <a href="{{ url('/medical_record') }}"> <button class="btn btn-primary btn-sm"><i class="#"></i> Kembali</button></a>
              </div><br>
              <table class="table table-bordered table-striped">
                <thead>
		            	<tr>
		              	<th class="col-md-2">Tanggal Periksa</th>
		              	<td>{{ $medical_records->tgl_periksa }}</td>                                  
                  </tr>
                  <tr>
                  	<th class="col-md-2">Nama Pasien</th>
                  	<td>  {{ $medical_records->patients->nama_pasien }}</td>                                  
                  </tr>
                  <tr>
                    <th class="col-md-2">Riwayat Penyakit</th>
                    <td><p>{{ $medical_records->riwayat }}</p></td>                                  
                  </tr>
                  <tr>
                  	<th class="col-md-2">Keluhan</th>
                  	<td><p>{{ $medical_records->keluhan }}</p></td>                                  
                  </tr>
                  <tr>
                    <th class="col-md-2">Pemeriksaan</th>
                    <td><p>{{ $medical_records->check }}</p></td>                                  
                  </tr>
                  <tr>
                  	<th class="col-md-2">Diagnosa</th>
                  	<td><p>{{ $medical_records->diagnoses->nama_diagnosa }}</p></td>                                  
                  </tr>
                  <tr>
                  	<th class="col-md-2" style="vertical-align: middle;">Obat</th>                   
                  	<td>
                      <ol style="padding: 12px;">
                        @foreach($medical_records->medicines as $medicine)
                        <li>{{ $medicine->nama_obat }}</li>
                        @endforeach
                      </ol>
                    </td>                                                     
                  </tr>
                  <tr>
                  	<th class="col-md-2">Resep</th>
                  	<td><p>{{ $medical_records->resep }}</p></td>                                  
                  </tr>
                  <tr>
                    <th class="col-md-2">Keterangan</th>
                    <td><p>{{ $medical_records->ket }}</p></td>                                  
                  </tr>
                  <tr>
                    <th class="col-md-2" style="vertical-align: middle;">Tindakan</th>                   
                    <td>
                      <ol style="padding: 12px;">
                        @foreach($medical_records->treatments as $treatment)
                        <li>{{ $treatment->nama_tindakan }}</li>
                        @endforeach
                      </ol>
                    </td>                                                     
                  </tr>
                </thead>
              </table><br>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    @include('templates.footer')
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    @include('templates.control_sidebar')
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="{{ url('assets/bower_components/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ url('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- DataTables -->
<script src="{{ url('assets/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ url('assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
<!-- SlimScroll -->
<script src="{{ url('assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js') }}"></script>
<!-- FastClick -->
<script src="{{ url('assets/bower_components/fastclick/lib/fastclick.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ url('assets/dist/js/adminlte.min.js') }}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{ url('assets/dist/js/demo.js') }}"></script>
<!-- page script -->
</body>
</html>
