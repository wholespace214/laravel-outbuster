@extends('layouts.account')

@section('content')
    <div class="content profile">
        <h2 class="title">Mon profil</h2>

        <form name="myForm" action="{{ route('account.profile.update') }}" method="POST" class="form">
            <input type="hidden" name="_token" value="{{ csrf_token() }}" />
            <div class="row">
                <div class="col-6">
                    @include('layouts.error')
                    <div class="form-group">
                        <label for="">Pseudo :</label>
                        <input type="text" class="form-control" name="username" value="{{ auth()->user()->username }}"
                            placeholder="Pseudo">
                    </div>
                    <div class="form-group">
                        <label for="">Mot de passe :</label>
                        <input class="form-control" type="password" name="password" value="" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="">Adresse e-mail :</label>
                        <input type="text" class="form-control" name="email" value="{{ auth()->user()->email }}"
                            placeholder="Pseudo">
                    </div>
                    <div class="form-group">
                        <label for="">Inscription Newsletter :</label>
                        <select name="newsletter_subscription" id="" class="form-control">
                            <option></option>
                            <option {{ auth()->user()->newsletter_subscription == 'Non' ? 'selected' : '' }} value="Non">
                                Non</option>
                            <option value="Oui" {{ auth()->user()->newsletter_subscription == 'Oui' ? 'selected' : '' }}>
                                Oui
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-6">
                    <div class="profile-detail">
                        <div class="img-wrap"><img
                                src="{{ auth()->user()->avatar == '' ? url('assets/images/profile-picture.jpg') : url('storage/' . auth()->user()->avatar) }}"
                                alt="profile-picture"></div>
                        <div class="profile-text">
                            <span class="my-name">Mon avatar</span>
                            <a href="#0" class="edit-profile">Modifier mon avatar</a>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="extra-form">
                        <div class="form-group">
                            <label for="">Date de naissance :</label>
                            <input type="text"
                                value="{{ auth()->user()->date_of_birth? auth()->user()->date_of_birth->format('d-m-Y'): '' }}"
                                class="form-control" name="date_of_birth" placeholder="Pseudo">
                        </div>
                        <div class="form-group">
                            <label for="">Sexe :</label>
                            <select name="gender" id="" class="form-control">
                                <option></option>
                                <option {{ auth()->user()->gender == 'Homme' ? 'selected' : '' }} value="Homme">
                                    Homme</option>
                                <option value="Womme" {{ auth()->user()->gender == 'Womme' ? 'selected' : '' }}>
                                    Womme
                                </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Pays :</label>
                            <select name="country_id" class="form-control">
                                <option>-</option>
                                @foreach (App\Models\GpCountry::get() as $item)
                                    <option {{ auth()->user()->country_id == $item->id ? 'selected' : '' }}
                                        value="{{ $item->id }}"> {{ $item->country_name }} </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Adresse :</label>
                            <input type="text" value="{{ auth()->user()->address }}" class="form-control" name="address"
                                placeholder="Address">
                        </div>
                        <div class="form-group">
                            <label for="">Code Postal :</label>
                            <input type="text" value="{{ auth()->user()->zip_code }}" class="form-control"
                                name="zip_code" placeholder="Code Postal">
                        </div>
                        <div class="form-group">
                            <label for="">Ville :</label>
                            <input type="text" value="{{ auth()->user()->city }}" class="form-control" name="city"
                                placeholder="Ville">
                            </select>
                        </div>
                    </div>
                </div>
                <div class="btn-wrap">
                    <a class="btn btn-gray" href="#0">Annuler</a>
                    <button type="submit" class="btn btn-black">Modifier mes informations</button>
                </div>
            </div>
        </form>
    </div>

    <style>
        .img-wrap>img {
            width: 180px;
            height: 180px;
        }
    </style>
@endsection
