<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SerieRatingSystems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('serie_rating_systems', function (Blueprint $table) {
            $table->id();
            $table->integer('serie_id')->nullable();
            $table->integer('certification_country_id')->nullable();
            $table->string('certification_type')->nullable();
            $table->string('certification_letter')->nullable();
            $table->string('certification')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('serie_rating_systems');
    }
}
