<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="ApexAutos" />
    <meta name="keywords" content="ApexAutos" />
    <meta name="author" content="ApexAutos" />
    <link rel="apple-touch-icon" sizes="180x180" href="./assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon/favicon-16x16.png">
    <link rel="manifest" href="./assets/images/favicon/site.webmanifest">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <title>Forgot password</title>
    <link href="./assets/css/style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700;800;900&display=swap"
        rel="stylesheet">

    <style type="text/css">
        * {
            font-family: "Poppins", sans-serif;
            font-weight: 400;
            font-style: normal;
        }

        body {
            text-align: center;
            margin: 0 auto;
            width: 650px;
            font-family: 'Public Sans', sans-serif;
            background-color: #e2e2e2;
            display: block;
        }

        ul {
            margin: 0;
            padding: 0;
        }

        li {
            display: inline-block;
            text-decoration: unset;
        }

        a {
            text-decoration: none;
        }

        h5 {
            margin: 10px;
            color: #777;
        }

        .text-center {
            text-align: center
        }

        .header-menu ul li+li {
            margin-left: 20px;
        }

        .header-menu ul li a {
            font-size: 14px;
            color: #252525;
            font-weight: 500;
        }


        .button-86 {
            all: unset;
            width: 100px;
            height: 30px;
            font-size: 16px;
            background: transparent;
            border: none;
            position: relative;
            color: #f0f0f0;
            cursor: pointer;
            z-index: 1;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            white-space: nowrap;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
        }

        .button-86::after,
        .button-86::before {
            content: '';
            position: absolute;
            bottom: 0;
            right: 0;
            z-index: -99999;
            transition: all .4s;
        }

        .button-86::before {
            transform: translate(0%, 0%);
            width: 100%;
            height: 100%;
            background: #28282d;
            border-radius: 10px;
        }

        .button-86::after {
            transform: translate(10px, 10px);
            width: 35px;
            height: 35px;
            background: #ffffff15;
            backdrop-filter: blur(5px);
            -webkit-backdrop-filter: blur(5px);
            border-radius: 50px;
        }

        .button-86:hover::before {
            transform: translate(5%, 20%);
            width: 110%;
            height: 110%;
        }

        .button-86:hover::after {
            border-radius: 10px;
            transform: translate(0, 0);
            width: 100%;
            height: 100%;
        }

        .button-86:active::after {
            transition: 0s;
            transform: translate(0, 5%);
        }

        .footer-table {
            position: relative;
        }

        .footer-table::before {
            position: absolute;
            content: "";
            background-image: url(images/footer-left.svg);
            background-position: top right;
            top: 0;
            left: -71%;
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            z-index: -1;
            background-size: contain;
            opacity: 0.3;
        }

        .footer-table::after {
            position: absolute;
            content: "";
            background-image: url(images/footer-right.svg);
            background-position: top right;
            top: 0;
            right: 0;
            width: 100%;
            height: 100%;
            background-repeat: no-repeat;
            z-index: -1;
            background-size: contain;
            opacity: 0.3;
        }

        .theme-color {
            color: #0DA487;
        }
    </style>
</head>

<body style="margin: 20px auto;">
    <table align="center" border="0" cellpadding="0" cellspacing="0"
        style="background-color: white; width: 100%; box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353);-webkit-box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353);">
        <tbody>
            <tr>
                <td>
                    <table class="header-table" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr class="header"
                            style="background-color: #f7f7f7;display: flex;align-items: center;justify-content: space-between;width: 100%;">
                            <td class="header-logo">
                                <a href="./front-end/index.html"
                                    style="display: block; text-align: left;padding: 10px 32px;">
                                    <img src="images/logo.png" class="main-logo" style="width: 150px;" alt="logo">
                                </a>
                            </td>
                            <td class="header-menu" style="display: block; padding: 10px 32px;text-align: right;">
                                <ul class="nav navbar-nav">
                                    <li>
                                        <a href="./front-end/index.html">Home</a>
                                    </li>
                                    <li>
                                        <a href="./front-end/wishlist.html">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="./front-end/cart.html">My Cart</a>
                                    </li>
                                    <li>
                                        <a href="./front-end/contact-us.html">Contact</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </table>

                    <table class="contant-table" style="margin-top: 40px;" align="center" border="0" cellpadding="0"
                        cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <td>
                                    <img src="images/reset.png"
                                        style="background-size: cover ; width: 80%; margin: 0 auto;" alt="">
                                </td>
                            </tr>
                        </thead>
                    </table>

                    <table class="contant-table" style="margin-top: 40px;" align="center" border="0" cellpadding="0"
                        cellspacing="0" width="100%">
                        <thead>
                            <tr style="display: block;">
                                <td style="display: block;">
                                    <h3 style="font-weight: 700; font-size: 20px; margin: 0;">Reset Password</h3>
                                </td>

                                <td style="display: block;">
                                    <h3
                                        style="font-weight: 700; font-size: 20px; margin: 0;color: #939393;margin-top: 15px;">
                                        Hi @user,</h3>
                                </td>

                                <td>
                                    <p
                                        style="font-size: 17px;font-weight: 600;width: 74%;margin: 8px auto 0;line-height: 1.5;color: #939393;">
                                        We sending you this email because you requested a password reset. Click on
                                        this link to create a new password:</p>
                                </td>
                            </tr>
                        </thead>
                    </table>

                    <table class="button-table" style="margin-top: 27px;" align="center" border="0" cellpadding="0"
                        cellspacing="0" width="100%">
                        <thead>
                            <tr style="display: block;">
                                <td style="display: flex; justify-content: center;">
                                    <a class=" button-86"
                                        href="{resetlink}">Reset Password</a>
                                </td>
                            </tr>
                        </thead>
                    </table>

                    <table class=" contant-table" style="margin-top: 27px;" align="center" border="0" cellpadding="0"
                        cellspacing="0" width="100%">
                        <thead>
                            <tr style="display: block;">
                                <td style="display: block;">
                                    <p
                                        style="font-size: 17px;font-weight: 600;width: 74%;margin: 8px auto 0;line-height: 1.5;color: #939393;">
                                        If you didn’t request a password reset, you can ignore this
                                        email. your password
                                        will not be changed.</p>
                                </td>
                            </tr>
                        </thead>
                    </table>

                    <table class="text-center footer-table" align="center" border="0" cellpadding="0" cellspacing="0"
                        width="100%"
                        style="background-color: #282834; color: white; padding: 24px; overflow: hidden; z-index: 0; margin-top: 30px;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" class="footer-social-icon text-center"
                                    align="center" style="margin: 8px auto 11px;">
                                    <tr>
                                        <td>
                                            <h4 style="font-size: 19px; font-weight: 700; margin: 0; ">
                                                Shop For <span style="color: var(--theme-color3);">apexAutos</span></h4>
                                        </td>
                                    </tr>
                                </table>

                                <table border="0" cellpadding="0" cellspacing="0" class="footer-social-icon text-center"
                                    align="center" style="margin: 23px auto;">
                                    <tr>
                                        <td>
                                            <a href="www.facebook.com">
                                                <img src="images/fb.png"
                                                    style="font-size: 25px; margin: 0 18px 0 0;width: 22px;filter: invert(1);"
                                                    alt="">
                                            </a>
                                        </td>
                                        <td>
                                            <a href="www.twitter.com">
                                                <img src="images/twitter.png"
                                                    style="font-size: 25px; margin: 0 18px 0 0;width: 22px;filter: invert(1);"
                                                    alt="">
                                            </a>
                                        </td>
                                        <td>
                                            <a href="www.instagram.com">
                                                <img src="images/insta.png"
                                                    style="font-size: 25px; margin: 0 18px 0 0;width: 22px;filter: invert(1);"
                                                    alt="">
                                            </a>
                                        </td>
                                        <td>
                                            <a href="www.pinterest.com">
                                                <img src="images/pinterest.png"
                                                    style="font-size: 25px; margin: 0 18px 0 0;width: 22px;filter: invert(1);"
                                                    alt="">
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td>
                                            <h5 style="font-size: 13px; text-transform: uppercase; margin: 0; color:#ddd;
                                letter-spacing:1px; font-weight: 500;">
                                                <p>
                                                    Discover a <b>seamless online car buying experience</b> with
                                                    unbeatable prices,
                                                    extensive selections,
                                                    and
                                                    convenient delivery.
                                                </p>
                                            </h5>
                                            <h5 style="font-size: 13px; text-transform: uppercase; margin: 10px 0 0; color:#ddd;
                                letter-spacing:1px; font-weight: 500;">©2022 ApexAutos All rights reserved</h5>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>