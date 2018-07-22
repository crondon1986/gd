<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Documento;
use App\User;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $V=Documento::where('id_estados','3')->get();
        $Vistos=count($V);
        $X=Documento::where('id_estados','4')->get();
        $PorCorrecion=count($X);
        $xd=Documento::where('id_estados','5')->get();
        $Entregado=count($xd);
        $X1=Documento::where('id_estados','7')->get();
        $Aprobado=count($X1);
       
        
        return view('home')->with(['Vistos'=>$Vistos,'PorCorrecion'=>$PorCorrecion,'Entregado'=>$Entregado,'Aprobado'=>$Aprobado]);
    }
}
