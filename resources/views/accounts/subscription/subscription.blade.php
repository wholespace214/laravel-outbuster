@extends('layouts.account')

@section('content')
    <div class="content">
        <h2 class="inner-title">Mon abonnement</h2>
        <div class="status">
            <p>Votre abonnement actuel : <strong>Vous n'avez pas d'abonnement actif</strong></p>
            <a href="{{ route('account.subscription.type') }}" class="btn">S’abonner</a>
        </div>
        <div class="img-wrap"><img src="{!! url('assets/images/my-subscription.jpg') !!}" alt="my-subscription"></div>
    </div>
@endsection
