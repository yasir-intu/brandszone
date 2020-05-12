<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('brand_id');
            $table->string('name');
            $table->string('code');
            $table->float('price');
            $table->float('discount')->nullable();
            $table->integer('stock');
            $table->integer('stock_alert');
            $table->integer('sales');
            $table->text('description')->nullable();
            $table->text('features')->nullable();
            $table->integer('creator');
            $table->string('image');
            $table->string('image_two')->nullable();
            $table->string('image_three')->nullable();
            $table->string('image_four')->nullable();
            $table->string('slug');
            $table->integer('status')->default(1);
            $table->integer('request')->default(0);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
