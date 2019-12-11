<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medical_record extends Model{
    
    protected $primaryKey = 'id_mr';
	protected $guarded  = ['created_at', 'updated_at'];

	public function patients(){

        return $this->belongsTo(Patient::class, 'id_pasien');
    }

    public function diagnoses(){

        return $this->belongsTo('App\Diagnosis', 'id_diagnosa');
    }

    public function medicines() {
		return $this->belongsToMany('App\Medicine', 'medical_record_medicine', 'id_mr', 'id_obat');
	}

    public function treatments() {
        return $this->belongsToMany('App\Treatment', 'medical_record_treatment', 'id_mr', 'id_tindakan');
    }
}
