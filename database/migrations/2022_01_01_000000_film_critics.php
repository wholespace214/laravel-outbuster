<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FilmCritics extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_critics', function (Blueprint $table) {
            $table->id();
            $table->integer('film_id')->nullable();
            $table->string('film_critic_title')->nullable();
            $table->integer('film_critic_name_id')->nullable();
            $table->text('film_criticism')->nullable();
            $table->string('film_complete_criticism')->nullable();
            $table->string('film_description')->nullable();
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
        Schema::dropIfExists('film_critics');
    }
}
