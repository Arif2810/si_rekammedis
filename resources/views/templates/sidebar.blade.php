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
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
      </div>
    </form>
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
        <a href="{{ route('polyclinic.index') }}">
          <i class="glyphicon glyphicon-tags"></i> <span> Poliklinik</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <li>
        <a href="{{ route('terapis.index') }}">
          <i class="fa fa-user-md"></i> <span> Penerapi</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>
      <li>
        <a href="{{ route('treatment.index') }}">
          <i class="fa fa-check-square"></i> <span> Tindakan</span>
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
      <li>
        <a href="#">
          <i class="glyphicon glyphicon-transfer"></i> <span> Kunjungan</span>
          <span class="pull-right-container">
          </span>
        </a>
      </li>

      <!-- yang hanya bisa diakses admin -->
      @if(Auth::user()->akses == 'admin')
      <li class="treeview">
        <a href="#">
          <i class="fa fa-database"></i> <span>Databases</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="{{ route('agama.index') }}"><i class="fa fa-circle-o"></i> Agama</a></li>
          <li><a href="{{ route('position.index') }}"><i class="fa fa-circle-o"></i> Jabatan</a></li>
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
        <a href="/about">
          <i class="glyphicon glyphicon-info-sign"></i> <span>About</span>
        </a>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->