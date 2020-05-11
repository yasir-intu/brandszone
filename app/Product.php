<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;
    
    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
    public function scopeInactive($query)
    {
        return $query->where('status', 0);
    }
    public function scopeStockout($query)
    {
        return $query->where('stock', 0);
    }
    public function scopeInstock($query)
    {
        return $query->where('stock', '>', 0);
    }
    public function scopeTopsale($query)
    {
        return $query->where('sales', '>=', 50)->orderBy('sales', 'DESC');
    }
    public function brand()
    {
        return $this->belongsTo('App\Brand');
    }
    public function categories()
    {
        return $this->belongsToMany('App\Category')->withTimestamps();
    }
    public function maincategories()
    {
        return $this->belongsToMany('App\Maincategory')->withTimestamps();
    }
    public function colors()
    {
        return $this->belongsToMany('App\Color')->withTimestamps();
    }
    public function sizes()
    {
        return $this->belongsToMany('App\Size')->withTimestamps();
    }
    public function types()
    {
        return $this->belongsToMany('App\Type')->withTimestamps();
    }
}
