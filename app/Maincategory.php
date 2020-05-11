<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Maincategory extends Model
{
    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
    public function subcategories()
    {
        return $this->hasMany(Subcategory::class);
    }
    public function categories()
    {
        return $this->hasManyThrough('App\Category', 'App\Subcategory');
    }
    public function products()
    {
        return $this->belongsToMany('App\Product')->withTimestamps();
    }
}
