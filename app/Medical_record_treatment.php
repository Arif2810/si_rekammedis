<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medical_record_treatment extends Model{
	
    protected $table = 'medical_record_treatment';
	protected $guarded    = ['created_at', 'updated_at']; 
}
