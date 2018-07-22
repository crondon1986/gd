@extends('layouts.app')
@section('content')
<div class="login-box">
    <div class="login-logo">
 
        
    </div>
    <div class="login-box-body">
       <p> <img src="{{asset('/file/foto/admin.png')}}" height="120" width="120"/> 
          <a href="#"><b> Gestión de Documentos</b></a></p>
        <p class="login-box-msg">Iniciar sesión</p>
        <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
            {{ csrf_field() }}
            <div class="form-group has-feedback{{ $errors->has('email') ? ' has-error' : '' }}">
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
            <div class="form-group has-feedback{{ $errors->has('password') ? ' has-error' : '' }}">
                <input id="password" type="password" class="form-control" name="password" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
                @endif
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : ''}}> Recuerdame
                        </label>
                    </div>
                </div>
                <div class="col-xs-6">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">
                        Iniciar sesión
                    </button>
                </div>
            </div>
        </form>
<!--        <a class="btn btn-link" href="{{ url('/password/reset') }}">
        ¿Olvidaste tu contraseña?
        </a>-->
    </div>
</div>
@endsection