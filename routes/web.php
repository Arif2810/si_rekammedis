<?php

// Route::get('/', function(){
//   return view('welcome');
// });

Auth::routes();
Route::any('register', function(){
	return abort(404);
});

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index');
//=========================================================================
Route::group(['middleware'=>'auth'], function(){
	Route::resource('patient', 'PatientController');
	Route::get('/patient/{id_pasien}/show', 'PatientController@show');
	//=========================================================================
	Route::get('/medical_record/pdf', 'Medical_recordController@cetak')->name('medical_record.cetak');
	Route::resource('medical_record', 'Medical_recordController');
	Route::get('/medical_record/{id_mr}/show', 'Medical_recordController@show');
	// Route::get('/medical_record', 'Medical_recordController@index')->name('medical_record.index');
	// Route::post('/medical_record', 'Medical_recordController@store');	
	// Route::get('/medical_record/{id_mr}/edit', 'Medical_recordController@edit');
	// Route::put('/medical_record/{id_mr}', 'Medical_recordController@update');
	// Route::delete('/medical_record/{id_mr}', 'Medical_recordController@destroy');
	//=========================================================================
	Route::get('/setting', 'UserSettingController@form')->name('user.setting');
	Route::post('/setting', 'UserSettingController@update');
	//=========================================================================
	Route::group(['middleware'=>'akses.admin'], function(){
		Route::resource('user', 'UserController');
		//=========================================================================
		Route::resource('medicine', 'MedicineController');
		Route::get('/medicine/{id_obat}/show', 'MedicineController@show');
		//=========================================================================
		Route::resource('agama', 'AgamaController');
		Route::resource('gender', 'GenderController');
		Route::resource('diagnosis', 'DiagnosisController');
		Route::resource('treatment', 'TreatmentController');
	});
	// Route::get('/user', 'UserController@index')->name('user.index')->middleware('akses.admin');
	//=========================================================================

	Route::get('/about', function(){
		return view('nurul_nabawi.about');
	});
});
