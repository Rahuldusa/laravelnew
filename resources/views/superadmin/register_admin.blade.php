<!-- @extends('layouts.app') -->


@section('content')
<div class="container">
    <div class="row ">
    @include('superadmin.sidebar') 
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register Admin') }}</div>

                <div class="card-body">

                    <form action="{{ route('superadmin.register.admin') }}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <label for="apartment_name" class="col-md-4 col-form-label text-md-right">{{ __('Apartment Name') }}</label>

                            <div class="col-md-6">
                                <input id="apartment_name" type="text" class="form-control " name="apartment_name" value="{{ old('apartment_name') }}" required >

                             
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="apartment_purpose" class="col-md-4 col-form-label text-md-right">{{ __('Apartment Purpose') }}</label>
                            <div class="col-md-6">
                                <select id="apartment_purpose" class="form-control @error('apartment_purpose') is-invalid @enderror" name="apartment_purpose" required>
                                    <option value="" disabled selected>Select Purpose</option>
                                    <option value="Industry" {{ old('apartment_purpose') == 'Industry' ? 'selected' : '' }}>Industry</option>
                                    <option value="Home" {{ old('apartment_purpose') == 'Home' ? 'selected' : '' }}>Home</option>
                                    <option value="Apartment" {{ old('apartment_purpose') == 'Apartment' ? 'selected' : '' }}>Apartment</option>
                                </select>
                                @error('apartment_purpose')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="apartment_address" class="col-md-4 col-form-label text-md-right">{{ __('House Number') }}</label>

                            <div class="col-md-6">
                                <input id="apartment_address" type="text" class="form-control " name="apartment_address" value="{{ old('apartment_address') }}" required >

                             
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="city" class="col-md-4 col-form-label text-md-right">{{ __('City') }}</label>

                            <div class="col-md-6">
                                <input id="city" type="text" class="form-control " name="city" value="{{ old('city') }}" required >

                             
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="state" class="col-md-4 col-form-label text-md-right">{{ __('State') }}</label>

                            <div class="col-md-6">
                                <input id="state" type="text" class="form-control " name="state" value="{{ old('state') }}" required >

                             
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="pincode" class="col-md-4 col-form-label text-md-right">{{ __('Pincode') }}</label>

                            <div class="col-md-6">
                                <input id="pincode" type="text" class="form-control " name="pincode" value="{{ old('pincode') }}" required >

                             
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="country" class="col-md-4 col-form-label text-md-right">{{ __('Country') }}</label>

                            <div class="col-md-6">
                                <input id="country" type="text" class="form-control " name="country" value="{{ old('country') }}" required >

                             
                            </div>
                        </div>

                      


                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Admin Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="mobile" class="col-md-4 col-form-label text-md-right">{{ __('Mobile') }}</label>

                            <div class="col-md-6">
                                <input id="mobile" type="text" class="form-control " name="mobile" value="{{ old('mobile') }}" required >

                             
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Email') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required>

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                      

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register Admin') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
