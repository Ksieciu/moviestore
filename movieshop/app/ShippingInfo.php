<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShippingInfo extends Model
{

    protected $fillable = [
        'user_id', 'name', 'surname', 'country', 'city', 'street'
    ];

    public function user(){
        return $this->belongsTo('App\User');
    }
}
