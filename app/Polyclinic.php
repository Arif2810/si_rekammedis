<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Polyclinic extends Model{

	protected $primaryKey = 'id_poli';
	protected $guarded  = ['created_at', 'updated_at']; 
}
