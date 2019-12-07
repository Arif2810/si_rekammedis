<!DOCTYPE html>
<html>
@include('templates.head')

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  @include('templates.header')

  <!-- Left side column. contains the logo and sidebar -->
  @include('templates.sidebar')

  <!-- Content Wrapper. Contains page content -->
  @yield('content')
  <!-- /.content-wrapper -->

  @include('templates.footer')

  @include('templates.control_sidebar')

  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

@include('templates.scripts')
</body>
</html>
