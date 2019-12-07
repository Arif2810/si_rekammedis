<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gender extends Model{

	// protected $table = 'genders';

	protected $primaryKey = 'id_gender';
	protected $guarded  = ['created_at', 'updated_at'];    
}
