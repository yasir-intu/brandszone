<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
	public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
    public function maincategory()
    {
        return $this->belongsTo(Maincategory::class);
    }
    public function categories()
    {
        return $this->hasMany(Category::class);
    }
}
