<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agama extends Model{
	
    // protected $table = 'agamas';
    protected $primaryKey = 'id_agama';
	protected $guarded  = ['created_at', 'updated_at']; 
}
