<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Treatment extends Model{
	
    protected $primaryKey = 'id_tindakan';
	protected $guarded  = ['created_at', 'updated_at'];

	public function medical_records(){

		return $this->belongsToMany('App\Medical_record', 'medical_record_treatment', 'id_tindakan', 'id_mr');
    }
}
