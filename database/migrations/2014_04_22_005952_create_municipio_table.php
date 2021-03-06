<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMunicipioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('municipio', function (Blueprint $table) {
            $table->increments('id_municipio');
            $table->integer('id_pais')->unsigned();
            $table->foreign('id_pais')->references('id_pais')->on('pais')->onDelete('cascade');
            $table->integer('id_state')->unsigned();
            $table->foreign('id_state')->references('id_state')->on('states')->onDelete('cascade');
            $table->text('nombre');
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
        Schema::dropIfExists('municipio');
    }
}
