<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    
    public function movies(){
        return $this->belongsToMany('App\Movies');
    }

}
