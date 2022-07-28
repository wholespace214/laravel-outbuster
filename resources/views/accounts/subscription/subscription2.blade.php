@extends('layouts.account')

@section('content')
    <div class="content my-subcription12">
        <div class="selected">
            <h1>{!! $type !!}</h1>
            <h2 class="title">Mon abonnement</h2>
            <div class="detail">
                <p>Votre abonnement actuel : <strong>Forfait mensuel 9,99 €</strong></p>
                <div class="change-state">
                    <a href="#0">Modifier votre abonnement</a>
                    <a href="#0">Annuler votre abonnement</a>
                </div>
            </div>
        </div>
        <div class="selected payment-option">
            <h2 class="title">Informations de paiements</h2>
            <div class="detail">
                <div class="detail-text">
                    <p>Votre type de paiement actuel : <strong><img src="{!! url('assets/images/visa.png') !!}"> .... .... ....
                            0247</strong></p>
                    <p>Prochaine date de facturation : <strong>06 avril 2022</strong></p>
                </div>
                <div class="change-state">
                    <a href="#0">Gérer les informations de paiements</a>
                    <a href="#0">Modifier le jour de facturation</a>
                    <a href="#0">Détail de facturation</a>
                </div>
            </div>
        </div>
        <div class="payment-options">
            <h5 class="payment-text">Types de paiement acceptés</h5>
            <div class="pay-option-images">
                <a href="#0"><img src="{!! url('assets/images/pay1.png') !!}" alt="payment"></a>
                <a href="#0"><img src="{!! url('assets/images/pay2.png') !!}" alt="payment"></a>
                <a href="#0"><img src="{!! url('assets/images/pay3.png') !!}" alt="payment"></a>
                <a href="#0"><img src="{!! url('assets/images/pay4.png') !!}" alt="payment"></a>
                <a href="#0"><img src="{!! url('assets/images/pay5.png') !!}" alt="payment"></a>
            </div>
        </div>
    </div>
@endsection
