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

    public function info_stor()
    {
        return $this->hasMany('App\product_info_stor', 'pro_id', 'id');
    }

    public function color_stor()
    {
        return $this->hasMany('App\product_color_stor', 'pro_id', 'id');
    }
    public function size_stor()
    {
        return $this->hasMany('App\product_size_stor', 'pro_id', 'id');
    }
    public function purchase()
    {
        return $this->hasMany('App\Purchase_Product', 'pro_id', 'id');
    }
    public function purchaseReturn()
    {
        return $this->hasMany('App\Purchase_Return', 'pro_id', 'id');
    }

    public function sale()
    {
        return $this->hasMany('App\Sale_Product', 'pro_id', 'id');
    }

    public function damage()
    {
        return $this->hasMany('App\Damaged_Product', 'pro_id', 'id');
    }
}
