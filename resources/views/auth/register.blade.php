@extends('layouts.app')

@section('content')
    <div class="w-full min-h-screen flex items-center">
        <div class="m-auto bg-white shadow-lg rounded-2xl py-[30px] px-[40px]">

            <div class=" flex items-center mb-[40px] w-full ">
                <div class="m-auto flex items-center">
                    <img class="h-[80px] mr-[12px]" src="logoMisterChef.png" alt="">

                    <div class="flex flex-col justify-center">
                        <h1 class="font-semibold text-[20px] -mb-[10px]">Mister Chef</h1>
                        <h2 class="font-semibold text-[38px]">Registro</h2>
                    </div>
                </div>

            </div>

            <form method="POST" action="{{ route('register') }}">
                @csrf

                <div class="row mb-3">
                    <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                    <div class="col-md-6">
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                            value="{{ old('name') }}" required autocomplete="name" autofocus>

                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>

                    <div class="col-md-6">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                    <div class="col-md-6">
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                            name="password" required autocomplete="new-password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="password-confirm"
                        class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label>

                    <div class="col-md-6">
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation"
                            required autocomplete="new-password">
                    </div>
                </div>

                <div class="row mb-0">
                    <div class=" w-full flex justify-center">
                        <button type="submit"
                            class="bg-[#ea0104] text-white/100 w-[150px] text-[20px] h-[40px] rounded-xl hover:text-[#ea0104] hover:bg-white hover:border-[#ea0104] hover:border-[2px] transition duration-200">
                            {{ __('Register') }}
                        </button>
                        <p class="w-[130px] text-center leading-4  h-full">
                            <a class="text-[#ea0104] no-underline border-none h-full flex items-center justify-center"
                                href="{{ route('login') }}">
                                Iniciar sesion
                            </a>
                        </p>
                    </div>
                </div>
            </form>

        </div>
    </div>
@endsection