<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
    public function products()
    {
        return $this->belongsToMany('App\Product')->withTimestamps();
    }
}
