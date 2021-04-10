<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Articles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('categoryID');
            $table->unsignedBigInteger('cityPlateNo');
            $table->unsignedBigInteger('userID');
            $table->string('title');
            $table->string('image');
            $table->longText('content');
            $table->integer('hit')->default(0);
            $table->integer('status')->default(0)->comment('0: Pasif | 1: Aktif');
            $table->string('slug');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('categoryID')
                   ->references('id')
                   ->on('categories');

            $table->foreign('cityPlateNo')
                   ->references('plateNo')
                   ->on('cities');
            
            // $table->foreign('userID')
            //        ->references('id')
            //        ->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
}
