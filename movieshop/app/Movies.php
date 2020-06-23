<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movies extends Model
{
    public $timestamps = false;
    
    public function categories(){
        return $this->belongsToMany('App\Categories');
    }

    public function order(){
        return $this->belongsToMany('App\Order');
    }
}
