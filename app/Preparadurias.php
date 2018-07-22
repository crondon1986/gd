<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Preparadurias extends Model
{
      protected $table='preparaduria';
    protected $primaryKey='id_preparaduria';
    protected $fillable=['id_estados','id_estudiante','id_asignatura','semestre','creditos_aprobados','promedio_general'];
}
