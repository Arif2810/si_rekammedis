<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model{

    protected $primaryKey = 'id_jabatan';
	protected $guarded  = ['created_at', 'updated_at']; 
}
