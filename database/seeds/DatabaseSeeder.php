<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Model::unguard();
       $this->call(TipoTableSeeder::class);
       $this->call(EstadosTableSeeder::class);  
       $this->call(InstitucionesTableSeeder::class);
       $this->call(PerfilesTableSeeder::class);
       $this->call(DedicacionEstudianteTableSeeder::class); 
       $this->call(DedicacionTableSeeder::class);  
       $this->call(EscuelaTableSeeder::class);
       $this->call(DependenciasTableSeeder::class);
       $this->call(DependenciaTableSeeder::class);
       $this->call(PaisTableSeeders::class);
       $this->call(StatesTableSeeders::class);
       $this->call(MunicipiosTableSeeders::class);
       $this->call(CiudadTableSeeders::class);
       $this->call(UsersTableSeeder::class);
       $this->call(CategoriaDocumentoTableSeeder::class);
       $this->call(SubcategoriaDocumentoTableSeeder::class);
       $this->call(ItemSubcategoriaDocumentoTableSeeder::class);
       $this->call(AsignaturasTableSeeders::class);
       Model::reguard();
    }
}
