<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movies extends Model
{
    public function categories(){
        return $this->belongsToMany('App\Categories');
    }
}
