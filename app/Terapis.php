<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Terapis extends Model{

	protected $table = 'terapises';
    protected $primaryKey = 'id_terapis';
	protected $guarded  = ['created_at', 'updated_at']; 
}
