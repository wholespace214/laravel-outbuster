@extends('layouts.account')

@section('content')
    <div class="content my-subcription11">
        <div class="status">
            <h2 class="inner-title">Type d’abonnement</h2>
            <p>Choisir une formule d’abonnement</p>
        </div>
        <div class="plans">
            <label class="radio-lebel checked" id="radio">
                <input type="radio" name="radio" checked value="1">
                <span class="checkmark"></span>
                <div class="plan-text">
                    <div class="txt">
                        <h3 class="plan-title">Formule découverte 7 jours - 3,5 €</h3>
                        <p>Accès illimités aux films & séries</p>
                    </div>
                    <span class="action" id="action">Choisir cette formule</span>
                </div>
            </label>
            <label class="radio-lebel" id="radio">
                <input type="radio" name="radio" value="2">
                <span class="checkmark"></span>
                <div class="plan-text">
                    <div class="txt">
                        <h3 class="plan-title">Formule mensuelle 30 jours - 9,99 €</h3>
                        <p>Accès illimités aux films & séries</p>
                    </div>
                    <span class="action" id="action">Choisir cette formule</span>
                </div>
            </label>
            <label class="radio-lebel" id="radio">
                <input type="radio" name="radio" value="3">
                <span class="checkmark"></span>
                <div class="plan-text">
                    <div class="txt">
                        <h3 class="plan-title">Formule annuelle 365 jours - 99 €</h3>
                        <p>Accès illimités aux films & séries</p>
                    </div>
                    <span class="action" id="action">Choisir cette formule</span>
                </div>
            </label>
            <div class="btn-wrap">
                <a class="btn btn-gray" href="#0">Annuler</a>
                <a class="btn btn-black">Valider ma
                    formule</a>
            </div>
        </div>
    </div>

    <script>
        var url = "{{ route('account.subscription.payment', ':id') }}";
        $('.btn-black').click(function() {
            url = url.replace(':id', $('.checked > input').val());
            window.location.href = url;
        })
    </script>
@endsection
