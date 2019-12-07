<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Medicine extends Model{

    protected $primaryKey = 'id_obat';
	protected $guarded  = ['created_at', 'updated_at']; 

	public function medical_records(){

		return $this->belongsToMany('App\Medical_record', 'medical_record_medicine', 'id_obat', 'id_mr');
        // return $this->belongsToMany('App\Medical_record', 'medicine_details', 'id_obat', 'id_detail');
        // return $this->belongsToMany('App\Diagnosa', 'diagnosa_obat', 'id_obat', 'id_diagnosa');
        // return $this->belongsToMany('Mahasiswa', 'mahasiswa_hobi', 'id_hobi', 'id_mahasiswa');
    }
}
