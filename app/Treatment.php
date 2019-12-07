<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Treatment extends Model{
	
    protected $primaryKey = 'id_tindakan';
	protected $guarded  = ['created_at', 'updated_at']; 
}
