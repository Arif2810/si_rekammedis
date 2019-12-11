<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medical_record_medicine extends Model{

	protected $table = 'medical_record_medicine';
    // protected $primaryKey = 'id_mr_obat';
	protected $guarded    = ['created_at', 'updated_at']; 
}
