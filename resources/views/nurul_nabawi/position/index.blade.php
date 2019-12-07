<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
  <title>Halaman Jabatan</title>
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
        <li class="active">Data Jabatan</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
          <div class="col-xs-12">
              <div class="box" style="padding: 0 30px">
                <div class="box-header">
                  <div class="box-header">
                    <h5 class="box-title">Tambah data jabatan klinik Nurul Nabawi Al-Kautsar</h5>
                  </div>
                  <div class="box-body">
                    @include('nurul_nabawi/validation')
                    <form action="{{ url('/position') }}" method="post">
                      <div>
                        <label>Jabatan</label>
                        <input class="form-control" type="text" name="nama_jabatan">
                      </div><br><br>
                      <div>
                        <input class="btn btn-primary" type="submit" name="submit" value="Tambahkan">
                        {{csrf_field()}}
                      </div>
                    </form>
                  </div>
                </div>
            </div>
        </div>
      </div>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box" style="padding: 0 30px">
            <div class="box-header">
              <div class="box-header">
                <h3 class="box-title">Data jabatan klinik Nurul Nabawi Al-Kautsar</h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                @include('nurul_nabawi/notification')
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
                    <?php $no=1; ?>
                    <tr style="background-color: rgb(230, 230, 230);">
                      <th>No</th>
                      <th>Jabatan</th>
                      <th>Action</th>                 
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($positions as $positions)
                    <tr>
                      <td>{{ $no++ }}</td>
                      <td>{{ $positions->nama_jabatan }}</td>
                      <td>
                        <a href="position/{{$positions->id_jabatan}}/edit"><button class="btn btn-warning btn-xs">Edit</button></a>
                        <button class="btn btn-danger btn-xs" data-delid={{$positions->id_jabatan}} data-toggle="modal" data-target="#delete"><i class="glyphicon glyphicon-trash"></i> Hapus</button>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
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
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>

<!-- modal -->
<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background-color: rgb(200, 200, 200)">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span> 
        </button>
        <h4 class="modal-title text-center" id="myModalLabel">Delete Confirmation</h4>
      </div>
      <form action="{{route('position.destroy', 'test')}}" method="post">
        {{method_field('delete')}}
        {{csrf_field()}}
        <div class="modal-body" style="background-color: rgb(230, 230, 230)">
          <p class="text-center">Apakah anda yakin akan menghapus ini?</p>
          <input type="hidden" name="id_jabatan" id="del_id" value="">
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger">Ya, hapus ini</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Tidak, kembali</button>
        </div>
      </form>
    </div>
  </div>  
</div>
@include('templates.modal')
</body>
</html>
