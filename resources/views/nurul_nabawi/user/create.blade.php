<!DOCTYPE html>
<html>
<head>
	@include('templates.head')
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
		        Data User
		        <small>advanced tables</small>
		      </h1>
		      <ol class="breadcrumb">
		        <li><a href="{{ url('/') }}"><i class="fa fa-dashboard"></i> Home</a></li>
		        <li><a href="{{ route('user.index') }}">Data User</a></li>
		        <li class="active">Tambah Data User</li>
		      </ol>
		    </section>

		    <section class="content">
		      	<div class="row">
		        	<div class="col-xs-12">
		          		<div class="box">
		            		<div class="box-header">
		            			<div class="box-header">
					              <h5 class="box-title">Tambah data user klinik Nurul Nabawi Al-Kautsar</h5>
					            </div>
					            <div class="box-body">
					            	@include('nurul_nabawi/validation')
					            	@include('nurul_nabawi/notification')
					            	<form action="{{ url('/user') }}" method="post">
					            		<div class="form-group">
											<label>Nama</label>
											<input required="" class="form-control{{ $errors->has('name') ? ' has-error' : '' }}" type="text" name="name" value="{{ old('name') }}">
											@if ($errors->has('name'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('name') }}</strong>
			                                    </span>
			                                @endif
										</div>
										<div class="form-group">
											<label>Username</label>
											<input required="" class="form-control{{ $errors->has('username') ? ' has-error' : '' }}" type="text" name="username" value="{{ old('username') }}">
											@if ($errors->has('username'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('username') }}</strong>
			                                    </span>
			                                @endif
										</div>
										<div class="form-group">
											<label>Email</label>
											<input required="" class="form-control{{ $errors->has('email') ? ' has-error' : '' }}" type="email" name="email" value="{{ old('email') }}">
											@if ($errors->has('email'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('email') }}</strong>
			                                    </span>
			                                @endif
										</div>
										<div class="form-group">
											<label>Password</label>
											<input required="" class="form-control{{ $errors->has('password') ? ' has-error' : '' }}" type="password" name="password">
											@if ($errors->has('password'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('password') }}</strong>
			                                    </span>
			                                @endif
										</div>
										<div class="form-group">
											<label>Ulangi Password</label>
											<input required="" class="form-control{{ $errors->has('repassword') ? ' has-error' : '' }}" type="password" name="repassword">
											@if ($errors->has('repassword'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('repassword') }}</strong>
			                                    </span>
			                                @endif
										</div>
										<div class="form-group">
											<?php
												$val = old('akses'); 
											?>
											<label>Hak akses</label>
											<select class="form-control{{ $errors->has('akses') ? ' has-error' : '' }}" name="akses" required="">
												<option value="" {{ $val==""?'selected':'' }}>-- Pilih hak akses sebagai : --</option>
												<option value="operator" {{ $val=="operator"?'selected':'' }}>Operator</option>
												<option value="admin" {{ $val=="admin"?'selected':'' }}>Administrator</option>
											</select>
											@if ($errors->has('akses'))
			                                    <span class="help-block">
			                                        <strong>{{ $errors->first('akses') }}</strong>
			                                    </span>
			                                @endif
											<!-- <input required="" class="form-control" type="password" name="password"> -->
										</div><br>
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