<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Diagnosis extends Model{
    
    protected $primaryKey = 'id_diagnosa';
    protected $guarded = ['created_at', 'updated_at'];
}
