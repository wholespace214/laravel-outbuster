<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
</head>

<body style="padding: 0; margin: 0; mso-line-height-rule: exactly;">
    <center>
        <table width="100%" cellpadding="0" cellspacing="0" border="0"
            style="max-width: 600px; margin: 0 auto; border: 1px solid #dfe1eb; color: #064b6a; font-size: 18px; line-height: 1.42857143; font-family: system-ui,-apple-system,'Segoe UI',Roboto,'Helvetica Neue',Arial,'Noto Sans','Liberation Sans',sans-serif,'Apple Color Emoji','Segoe UI Emoji','Segoe UI Symbol','Noto Color Emoji'; mso-line-height-rule: exactly;">
            <tr>
                <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td><img src="{!! url('assets/images/email-header.jpg') !!}" alt="Ecouter Voir"
                                    style="vertical-align: middle; border: none; max-width: 100%;"></td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td width="25"></td>
                                        <td>
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td height="100"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center">Bonjour { prénom },</td>
                                                </tr>
                                                <tr>
                                                    <td height="5"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center">Merci pour votre inscription sur OUTBUSTER</td>
                                                </tr>
                                                <tr>
                                                    <td height="5"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center">Pour confirmer votre e-mail et vérifier votre
                                                        inscription,</td>
                                                </tr>
                                                <tr>
                                                    <td height="5"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center">merci de cliquer sur le lien ci-dessous.</td>
                                                </tr>
                                                <tr>
                                                    <td height="40"></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table width="100%" cellpadding="0" cellspacing="0"
                                                            border="0">
                                                            <tr>
                                                                <td width="30"></td>
                                                                <td align="center" style="background-color: #dbf103;">
                                                                    <table>
                                                                        <tr>
                                                                            <td height="10"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="20"></td>
                                                                            <td><a href="#0"
                                                                                    style="text-decoration: none; font-size: 16px;color: #0a0a10;">https://www.Lien
                                                                                    lorem ipsum......</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="10"></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td width="30"></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="40"></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="25"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#dfe1eb"
                                    style="font-size: 12px;">
                                    <tr>
                                        <td width="10"></td>
                                        <td>
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td align="center">Si vous n’êtes pas à l’origine de cette demande
                                                        d’inscription ?, ne cliquez pas</td>
                                                </tr>
                                                <tr>
                                                    <td align="center">sur le lien, sans confirmation le compte sera
                                                        automatiquement supprimé au </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">bout de 48 heures.</td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="10"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</body>

</html>
