<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Patient extends Model{
    
    protected $primaryKey = 'id_pasien';
	protected $guarded  = ['created_at', 'updated_at']; 

	public function agamas(){

        return $this->belongsTo('App\Agama', 'id_agama');
    }

    public function genders(){

        return $this->belongsTo('App\Gender', 'id_gender');
    }
}

