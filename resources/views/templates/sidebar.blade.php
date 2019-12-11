<!-- Left side column. contains the logo and sidebar -->
<!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="{{ url('assets/dist/img/user.jpeg') }}" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>Nurul Nabawi</p>
        <p>Al Kautsar</p>
      </div>
    </div>
    <!-- search form -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>
      <li>
        <a href="{{ url('/home') }}">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
      <li>
        <a href="{{ route('patient.index') }}">
          <i class="fa fa-address-book"></i> <span> Data Pasien</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <li>
        <a href="{{ route('medical_record.index') }}">
          <i class="glyphicon glyphicon-floppy-save"></i> <span> Rekam Medis</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <!-- yang hanya bisa diakses admin -->
      @if(Auth::user()->akses == 'admin')
      <li class="treeview">
        <a href="#">
          <i class="fa fa-database"></i> <span>Data Master</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{ route('diagnosis.index') }}"><i class="fa fa-circle-o"></i>Diagnosa</a></li>
          <li><a href="{{ route('treatment.index') }}"><i class="fa fa-circle-o"></i>Tindakan</a></li>
          <li><a href="{{ route('agama.index') }}"><i class="fa fa-circle-o"></i> Agama</a></li>
          <li><a href="{{ route('user.index') }}"><i class="fa fa-circle-o"></i> User</a></li>
          <li><a href="{{ route('gender.index') }}"><i class="fa fa-circle-o"></i> Gender</a></li>
        </ul>
      </li>
      @endif

      <li class="treeview">
        <a href="#">
          <i class="glyphicon glyphicon-plus-sign"></i> <span>Obat</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{ route('medicine.index') }}"><i class="fa fa-circle-o"></i> Data Obat</a></li>
        </ul>
      </li>
      <li>
        <a href="https://webprogrammingumri.github.io/">
          <i class="glyphicon glyphicon-info-sign"></i> <span>About Klinik</span>
        </a>
      </li>
      <li>
        <a href="https://arif2810.github.io/">
          <i class="glyphicon glyphicon-info-sign"></i> <span>About Developer</span>
        </a>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->