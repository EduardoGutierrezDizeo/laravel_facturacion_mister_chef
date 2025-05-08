@extends('layouts.applogin')

@section('content')
  <div class="w-full h-[100vh] flex items-center">
    <div class="m-auto bg-white shadow-lg rounded-2xl py-[30px] px-[40px]">

      <div class=" flex items-center mb-[40px]">
        <img class="h-[80px] mr-[12px]" src="logoMisterChef.png" alt="">
        <h1 class="font-semibold text-[35px]">Mister Chef</h1>
      </div>

      <form method="POST" action="{{ route('login') }}" class="mb-[15px]">
          @csrf
          <div class="input-group mb-3">
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email"
                  value="{{ old('email') }}" required autocomplete="email" autofocus>

                @error('email')
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
                </span>
                @enderror
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                  name="password" required autocomplete="current-password">

                @error('password')
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
                </span>
                @enderror
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <!-- /.col -->
            <div class="pt-[20px] w-full flex justify-center">
              <button type="submit" class="bg-[#ea0104] text-white/100 w-[130px] text-[20px] h-[40px] rounded-xl hover:text-[#ea0104] hover:bg-white hover:border-[#ea0104] hover:border-[2px] transition duration-200">Sign In</button>
              <p class="w-[130px] text-center leading-4 h-full">
                @if (Route::has('password.request'))
                  <a class="text-[#ea0104] no-underline h-full border-none flex items-center justify-center" href="{{ route('register') }}">
                    {{ __('Register a new membership') }}
                  </a>
                @endif
              </p>
            </div>
          <!-- /.col -->
          </div>
        </form>

        <p class="">
          @if (Route::has('password.request'))
                <a class="text-black no-underline hover:underline hover:dorder-b border-none" href="{{ route('password.request') }}">
                  {{ __('Forgot Your Password?') }}
                </a>
          @endif
        </p>
    </div>
  </div>
@endsection