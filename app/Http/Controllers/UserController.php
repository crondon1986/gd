<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\Perfil;
use App\Pais;
use App\States;
use App\Municipios;
use App\Ciudades;
use App\Dependencia;
use App\Ruta;
use Response;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use View;
use App\Http\Controllers\FuncionesController;
use DB;
class UserController extends Controller
{
    private $dir_tmp;
    private $dir_mark;
    private $tipo_validos;
    public function __construct() 
    {  $this->middleware('auth');
        //inicializar las variables de configuracion
        $this->dir_tmp=env('TMP_DIR');
        $this->dir_mark=env('URL_MARKS');
        $this->tipo_validos=env('FORMAT_IMG');
        //verificar si el directorio existes
        if(!is_dir($this->dir_mark))
        {
            //crear el directorio
            mkdir($this->dir_mark,0777);
            chmod($this->dir_mark,0777);
        }
    }
    public function index()
    {$data= array();
       $data= User::select('users.*','perfil.nombre_perfil','dependencia.nombre_dependencia')->join('perfil','users.id_perfil','=','perfil.id_perfil')->leftjoin('dependencia','users.id_dependencia','=','dependencia.id_dependencia')->paginate(10);

        //$data= User::select('users.*','perfil.nombre_perfil')->join('perfil','users.id_perfil','=','perfil.id_perfil')->paginate(10); 

       // echo '<pre>';print_r($data); die();  
        return view('usuarios/index')->with(['data'=>$data]);
    }
    public function create()
    {
        $Pais=Pais::pluck('nombre','id_pais');
        $Ciudades=Ciudades::pluck('nombre','id_ciudad');
        $States=States::pluck('nombre','id_state');
        $Municipios= Municipios::pluck('nombre','id_municipio');
        $Dependencia= Dependencia::pluck('nombre_dependencia','id_dependencia');
        $Rol=Perfil::pluck('nombre_perfil','id_perfil');
        return View::make('usuarios/create')->with(['Ciudad' => $Ciudades,'Pais' => $Pais,'States' => $States,'Municipios'=>$Municipios,'Dependencia'=>$Dependencia,'Rol'=>$Rol]);   
    }
    public function AgregarUsuario(Request $request)
    {
        $rules = array(
            'cedula' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'telefono' => 'required',
            'sexo' => 'required',
            'ocupacion' => 'required',
            'imgUser' =>'required|required_with:'.$this->tipo_validos,
            'direccion' => 'required',
            'email' => 'required|email|unique:users',
            'id_pais' => 'required',
            'id_state' => 'required',
            'id_municipio' => 'required',
            'id_ciudad' => 'required',
            'id_dependencia' => 'required',
            'id_perfil' => 'required',
            
            );    
        $mensajes=array(
            'cedula.required'=>'La Cedula Es  Obligatorio',
            'nombre.required'=>'El Nombre Es  Obligatorio',
            'apellido.required'=>'El Apellido Es  Obligatorio',
            'telefono.required'=>'El Telefono Es  Obligatorio',
            'sexo.required'=>'El Sexo  Obligatorio',
            'ocupacion.required'=>'La Ocupacion Es  Obligatorio',
            'nombre.required'=>'El  Nombre es Obligatorio',
            'id_pais.required'=>'El  Pais es Obligatorio',
            'id_state.required'=>'El Estado es Obligatorio',
            'id_municipio.required'=>'El Municipio es Obligatorio',
            'id_dependencia.required'=>'El Departamento es Obligatorio',
            'id_perfil.required'=>'El Rol es Obligatorio',
            'id_ciudad.required'=>'La Ciudad es Obligatorio',
            'imgUser.required'=>'La Imagen es Obligatoria',
            'direccion.required'=>'La Direccion Es Obligatoria',
            'email.required'=>'El correo es Obligatorio',
            'email'=>'debe introducir un email valido',
            'email.unique'=>'Ya existe un email con ese Nombre',
            'imgUser.required_with'=>'La imagen debe ser de los tipo '.$this->tipo_validos,
         ); 
        $validator = Validator::make(Input::all(), $rules,$mensajes);
        if ($validator->fails())
              return Response::json(array('success'=>false,'errors' => $validator->errors()->all()));
        else 
        {
            DB::beginTransaction();
            $Funciones= new FuncionesController();
            $password=$Funciones->GenerarPassword();
            $request->password=  bcrypt($password);
            $User = new User();
            $User->id_dependencia=$request->id_dependencia;
            $User->id_perfil=$request->id_perfil;
            $User->id_pais=$request->id_pais;
            $User->id_state=$request->id_state;
            $User->id_municipio=$request->id_municipio;
            $User->id_ciudad=$request->id_ciudad;
            $User->email=$request->email;
            $User->avatar= $request->imgUser;
            $User->password=$request->password;
            $User->cedula= $request->cedula;
            $User->name= $request->nombre;
            $User->nombres= $request->nombre;
            $User->apellidos= $request->apellido;
            $User->telefono= $request->telefono;
            $User->sexo= $request->sexo;
            $User->ocupacion= $request->ocupacion;
            $User->direccion= $request->direccion;
            $User->remember_token=$request->_token;
            $User->save();
            DB::commit();
            rename($this->dir_tmp.'/'.$request->imgUser, ($this->dir_mark.'/'.$request->imgUser));
            $email=env('MAIL_USERNAME');
            $admin=$request->email;
            $name=$request->email;
            $fullname=$request->nombre;
            $Funciones->EnviarCorreo($name,$fullname,$email,$password,$admin);
            $success=array('success'=>true,'mensaje'=>'Usuario '. $User->email .'Registrado  con Exito!!');
            return response()->json($success);
        }
    }
    public function show(Request $request)
    {
        $User=User::find($request->id);
        if($User->id_perfil==5){
            $RutaSecretaria=Ruta::where('id_user',$request->id)->where('id_estado','1')->get();
            $Creado=count($RutaSecretaria);
            $RutaSecretariaa=Ruta::where('id_user',$request->id)->where('id_estado','8')->get();
            $Rechazado=count($RutaSecretariaa);
            $RutaSecretarias=Ruta::where('id_user',$request->id)->where('id_estado','9')->get();
            $Aprobado=count($RutaSecretarias);
            
            return view('usuarios/show')->with(['User'=>$User,'Creado'=> $Creado,'Rechazado'=>$Rechazado,'Aprobado'=>$Aprobado]);
        
        }
        if($User->id_perfil==3){
            $RutaSecretaria=Ruta::where('id_user',$request->id)->where('id_estado','1')->get();
            $Creado=count($RutaSecretaria);
            $RutaSecretariaa=Ruta::where('id_user',$request->id)->where('id_estado','5')->get();
            $Corregido=count($RutaSecretariaa);
            $RutaSecretarias=Ruta::where('id_user',$request->id)->where('id_estado','7')->get();
            $Firmado=count($RutaSecretarias);
            return view('usuarios/show')->with(['User'=>$User,'Creado'=> $Creado,'Corregido'=> $Corregido,'Firmado'=> $Firmado]);

        }
         if($User->id_perfil==1){
            return view('usuarios/show')->with(['User'=>$User]);
       
        }
        if($User->id_perfil==2){
            $RutaSecretaria=Ruta::where('id_user',$request->id)->where('id_estado','2')->get();
            $Creado=count($RutaSecretaria);
            $RutaSecretariaa=Ruta::where('id_user',$request->id)->where('id_estado','3')->get();
            $Corregido=count($RutaSecretariaa);
            return view('usuarios/show')->with(['User'=>$User,'Creado'=> $Creado,'Corregido'=> $Corregido]);

       
        }
        if($User->id_perfil==4){
            return view('usuarios/show')->with(['User'=>$User]);
       
        }
    }
     public function ModificarUsuario($id)
    {
        $Pais=Pais::pluck('nombre','id_pais');
        $Ciudades=Ciudades::pluck('nombre','id_ciudad');
        $States=States::pluck('nombre','id_state');
        $Municipios= Municipios::pluck('nombre','id_municipio');
        $Dependencia= Dependencia::pluck('nombre_dependencia','id_dependencia');
        $Rol=Perfil::pluck('nombre_perfil','id_perfil');
        $User =User::find($id);
        return view('usuarios/edit')->with(['User'=>$User,'Pais' => $Pais,'States' => $States,'Municipios'=>$Municipios,'Ciudades'=>$Ciudades,'Dependencia'=>$Dependencia,'Rol'=>$Rol]);
    }
    public function EditarUsuario(Request $request)
    {
        $rules = array(
            'cedula' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'telefono' => 'required',
            'sexo' => 'required',
            'ocupacion' => 'required',
            'direccion' => 'required',
            'id_pais' => 'required',
            'id_state' => 'required',
            'id_municipio' => 'required',
            'id_ciudad' => 'required',
            'id_dependencia' => 'required',
            'id_perfil' => 'required',
            
            );    
        $mensajes=array(
            'cedula.required'=>'La Cedula Es  Obligatorio',
            'nombre.required'=>'El Nombre Es  Obligatorio',
            'apellido.required'=>'El Apellido Es  Obligatorio',
            'telefono.required'=>'El Telefono Es  Obligatorio',
            'sexo.required'=>'El Sexo  Obligatorio',
            'ocupacion.required'=>'La Ocupacion Es  Obligatorio',
            'nombre.required'=>'El  Nombre es Obligatorio',
            'id_pais.required'=>'El  Pais es Obligatorio',
            'id_state.required'=>'El Estado es Obligatorio',
            'id_municipio.required'=>'El Municipio es Obligatorio',
            'id_dependencia.required'=>'El Departamento es Obligatorio',
            'id_perfil.required'=>'El Rol es Obligatorio',
            'id_ciudad.required'=>'La Ciudad es Obligatorio',
            'direccion.required'=>'La Direccion Es Obligatoria',
          
           ); 
        $validator = Validator::make(Input::all(), $rules,$mensajes);
        if ($validator->fails())
              return Response::json(array('success'=>false,'errors' => $validator->errors()->all()));
        else 
        {
            DB::beginTransaction();
            User::where('id',$request->id)->update([
               'id_dependencia'=>$request->id_dependencia,
            'id_perfil'=>$request->id_perfil,
            'id_pais'=>$request->id_pais,
            'id_state'=>$request->id_state,
            'id_municipio'=>$request->id_municipio,
            'id_ciudad'=>$request->id_ciudad,
            'cedula'=> $request->cedula,
            'name'=> $request->nombre,
            'nombres'=> $request->nombre,
            'apellidos'=> $request->apellido,
            'telefono'=> $request->telefono,
            'sexo'=> $request->sexo,
            'ocupacion'=> $request->ocupacion,
           'direccion'=> $request->direccion                ]);
            DB::commit();
           $success=array('success'=>true,'mensaje'=>'Usuario Modificado con Exito!!');
            return response()->json($success);
        }
    }
    public function Destroy($id){
        User::destroy($id);
        return redirect()->back();
    }
    public function GetMunicipios(Request $request, $id)
    {
        if ($request->ajax()) 
        {
            $Comunidad = Municipios::municipios($id);
            return response()->json($Comunidad);
        }
    }
    public function GetStates(Request $request, $id)
    {
        if ($request->ajax()) 
        {
            $Provincia = States::estados($id);
            return response()->json($Provincia);
        }
    }
    public function GetCiudades(Request $request, $id)
    {
        if ($request->ajax()) 
        {
            $Ciudad = Ciudades::ciudades($id);
            return response()->json($Ciudad);
        }
    }
}
