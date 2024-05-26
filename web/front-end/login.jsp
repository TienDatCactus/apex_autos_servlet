<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <title>Log In</title>

      <!-- Google font -->
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet" />

      <!-- bootstrap css -->
      <link id="rtl-link" rel="stylesheet" type="text/css" href="./assets/css/vendors/bootstrap.css" />

      <!-- font-awesome css -->
      <link rel="stylesheet" type="text/css" href="./assets/css/vendors/font-awesome.css" />

      <!-- feather icon css -->
      <link rel="stylesheet" type="text/css" href="./assets/css/vendors/feather-icon.css" />

      <!-- slick css -->
      <link rel="stylesheet" type="text/css" href="./assets/css/vendors/slick/slick.css" />
      <link rel="stylesheet" type="text/css" href="./assets/css/vendors/slick/slick-theme.css" />

      <!-- Iconly css -->
      <link rel="stylesheet" type="text/css" href="./assets/css/bulk-style.css" />

      <!-- Template css -->
      <link id="color-link" rel="stylesheet" type="text/css" href="./assets/css/style.css" />
    </head>

    <body>
      <!-- Loader Start -->
      <div class="fullpage-loader">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <!-- Loader End -->

      <!-- Header Start -->
      <header class="pb-md-4 pb-0">
        <div class="header-top">
          <div class="container-fluid-lg">
            <div class="row">
              <div class="col-xxl-3 d-xxl-block d-none">
                <div class="top-left-header">
                  <i class="iconly-Location icli text-white"></i>
                  <span class="text-white">FPT University</span>
                </div>
              </div>

              <div class="col-xxl-6 col-lg-9 d-lg-block d-none">
                <div class="header-offer">
                  <div class="notification-slider">
                    <div>
                      <div class="timer-notification" style="overflow-x: hidden;">
                        <h6>
                          <strong class="me-1">Welcome to myNiggaCar!</strong>Wrap
                          new offers/gift every day on Weekends.<strong class="ms-1">New Coupon Code: niggaWhat!
                          </strong>
                        </h6>
                      </div>
                    </div>

                    <div>
                      <div class="timer-notification">
                        <h6>
                          Something you love is now on sale!
                          <a href="shop-left-sidebar.html" class="text-white">Buy Now !</a>
                        </h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-lg-3">
                <ul class="about-list right-nav-about">
                  <li class="right-nav-list">
                    <div class="dropdown theme-form-select">
                      <button class="btn dropdown-toggle" type="button" id="select-language" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <img src="./assets/images/country/united-states.png" class="img-fluid blur-up lazyload"
                          alt="" />
                        <span>English</span>
                      </button>
                      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="select-language">
                        <li>
                          <a class="dropdown-item" href="javascript:void(0)" id="english">
                            <img src="./assets/images/country/united-kingdom.png" class="img-fluid blur-up lazyload"
                              alt="" />
                            <span>English</span>
                          </a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="javascript:void(0)" id="chinese">
                            <img src="./assets/images/country/vn.png" class="img-fluid blur-up lazyload" alt="" />
                            <span>Viet Nam</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </li>
                  <li class="right-nav-list">
                    <div class="dropdown theme-form-select">
                      <button class="btn dropdown-toggle" type="button" id="select-dollar" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <span>USD</span>
                      </button>
                      <ul class="dropdown-menu dropdown-menu-end sm-dropdown-menu" aria-labelledby="select-dollar">
                        <li>
                          <a class="dropdown-item" id="aud" href="javascript:void(0)">VND</a>
                        </li>
                        <li>
                          <a class="dropdown-item" id="cny" href="javascript:void(0)">USD</a>
                        </li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="top-nav top-header sticky-header">
          <div class="container-fluid-lg">
            <div class="row">
              <div class="col-12">
                <div class="navbar-top">
                  <button class="navbar-toggler d-xl-none d-inline navbar-menu-button" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                    <span class="navbar-toggler-icon">
                      <i class="fa-solid fa-bars"></i>
                    </span>
                  </button>
                  <a href="index.html" class="web-logo nav-logo">
                    <img src="./assets/images/logo/1.png" class="img-fluid blur-up lazyload" alt="" />
                  </a>

                  <div class="middle-box">
                    <div class="location-box" style="background-color: #acacac;">
                      <button class="btn location-button" data-bs-toggle="modal" data-bs-target="#locationModal">
                        <span class="location-arrow">
                          <i data-feather="map-pin"></i>
                        </span>
                        <span class="locat-name" style="text-decoration: line-through;color: #5e5e5e;">Your
                          Location</span>
                        <i class="fa-solid fa-angle-down"></i>
                      </button>
                    </div>

                    <div class="search-box">
                      <div class="input-group">
                        <input type="search" class="form-control" placeholder="I'm searching for..."
                          aria-label="Recipient's username" aria-describedby="button-addon2" />
                        <button class="btn" type="button" id="button-addon2">
                          <i data-feather="search"></i>
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="rightside-box">
                    <div class="search-full">
                      <div class="input-group">
                        <span class="input-group-text">
                          <i data-feather="search" class="font-light"></i>
                        </span>
                        <input type="text" class="form-control search-type" placeholder="Search here.." />
                        <span class="input-group-text close-search">
                          <i data-feather="x" class="font-light"></i>
                        </span>
                      </div>
                    </div>
                    <ul class="right-side-menu">
                      <li class="right-side">
                        <div class="delivery-login-box">
                          <div class="delivery-icon">
                            <div class="search-box">
                              <i data-feather="search"></i>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="right-side">
                        <a href="contact-us.html" class="delivery-login-box">
                          <div class="delivery-icon">
                            <i data-feather="phone-call"></i>
                          </div>
                          <div class="delivery-detail">
                            <h6>24/7 Delivery</h6>
                            <h5>+84 33 1234 567</h5>
                          </div>
                        </a>
                      </li>
                      <!-- <li class="right-side">
                    <a href="wishlist.html" class="btn p-0 position-relative header-wishlist">
                      <i data-feather="heart"></i>
                    </a>
                  </li> -->
                      <!-- <li class="right-side">
                    <div class="onhover-dropdown header-badge">
                      <button type="button" class="btn p-0 position-relative header-wishlist">
                        <i data-feather="shopping-cart"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge">0
                          <span class="visually-hidden">unread messages</span>
                        </span>
                      </button>

                      <div class="onhover-div">
                        <ul class="cart-list">
                          <li class="product-box-contain">
                            <div class="drop-cart">
                              <a href="product-left-thumbnail.html" class="drop-image">
                                <img src="./assets/images/vegetable/product/1.png" class="blur-up lazyload" alt="" />
                              </a>

                              <div class="drop-contain">
                                <a href="product-left-thumbnail.html">
                                  <h5>Fantasy Crunchy Choco Chip Cookies</h5>
                                </a>
                                <h6><span>1 x</span> $80.58</h6>
                                <button class="close-button close_button">
                                  <i class="fa-solid fa-xmark"></i>
                                </button>
                              </div>
                            </div>
                          </li>

                          <li class="product-box-contain">
                            <div class="drop-cart">
                              <a href="product-left-thumbnail.html" class="drop-image">
                                <img src="./assets/images/vegetable/product/2.png" class="blur-up lazyload" alt="" />
                              </a>

                              <div class="drop-contain">
                                <a href="product-left-thumbnail.html">
                                  <h5>
                                    Peanut Butter Bite Premium Butter Cookies
                                    600 g
                                  </h5>
                                </a>
                                <h6><span>1 x</span> $25.68</h6>
                                <button class="close-button close_button">
                                  <i class="fa-solid fa-xmark"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                        </ul>

                        <div class="price-box">
                          <h5>Total :</h5>
                          <h4 class="theme-color fw-bold">$106.58</h4>
                        </div>

                        <div class="button-group">
                          <a href="cart.html" class="btn btn-sm cart-button">View Cart</a>
                          <a href="checkout.html" class="btn btn-sm cart-button theme-bg-color text-white">Checkout</a>
                        </div>
                      </div>
                    </div>
                  </li> -->
                      <li class="right-side onhover-dropdown">
                        <div class="delivery-login-box">
                          <div class="delivery-icon">
                            <i data-feather="user"></i>
                          </div>
                          <div class="delivery-detail">
                            <h6>Hello,</h6>
                            <h5>Anonymous user</h5>
                          </div>
                        </div>

                        <div class="onhover-div onhover-div-login">
                          <ul class="user-box-name">
                            <li class="product-box-contain">
                              <i></i>
                              <a href="login">Log In</a>
                            </li>

                            <li class="product-box-contain">
                              <a href="register">Register</a>
                            </li>

                            <li class="product-box-contain">
                              <a href="mail">Forgot Password</a>
                            </li>
                          </ul>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container-fluid-lg">
          <div class="row">
            <div class="col-12">
              <div class="header-nav">
                <div class="header-nav-left">
                  <button class="dropdown-category button-86">
                    <span>All Categories</span>
                  </button>

                  <div class="category-dropdown mt-2">
                    <div class="category-title">
                      <h5>Categories</h5>
                      <button type="button" class="btn p-0 close-button text-content">
                        <i class="fa-solid fa-xmark"></i>
                      </button>
                    </div>

                    <ul class="category-list">
                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/vegetable.svg" alt="" />
                          <h6>Vegetables & Fruit</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Organic Vegetables</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Potato & Tomato</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cucumber & Capsicum</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Leafy Vegetables</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Root Vegetables</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Beans & Okra</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cabbage & Cauliflower</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Gourd & Drumstick</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Specialty</a>
                              </li>
                            </ul>
                          </div>

                          <div class="list-2">
                            <div class="category-title-box">
                              <h5>Fresh Fruit</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Banana & Papaya</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Kiwi, Citrus Fruit</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Apples & Pomegranate</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Seasonal Fruits</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Mangoes</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Fruit Baskets</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/cup.svg" alt="" />
                          <h6>Beverages</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box w-100">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Energy & Soft Drinks</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Soda & Cocktail Mix</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Soda & Cocktail Mix</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Sports & Energy Drinks</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Non Alcoholic Drinks</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Packaged Water</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Spring Water</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Flavoured Water</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/meats.svg" alt="" />
                          <h6>Meats & Seafood</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Meat</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Fresh Meat</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Frozen Meat</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Marinated Meat</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Fresh & Frozen Meat</a>
                              </li>
                            </ul>
                          </div>

                          <div class="list-2">
                            <div class="category-title-box">
                              <h5>Seafood</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Fresh Water Fish</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Dry Fish</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Frozen Fish & Seafood</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Marine Water Fish</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Canned Seafood</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Prawans & Shrimps</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Other Seafood</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/breakfast.svg" alt="" />
                          <h6>Breakfast & Dairy</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Breakfast Cereals</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Oats & Porridge</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Kids Cereal</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Muesli</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Flakes</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Granola & Cereal Bars</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Instant Noodles</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Pasta & Macaroni</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Frozen Non-Veg Snacks</a>
                              </li>
                            </ul>
                          </div>

                          <div class="list-2">
                            <div class="category-title-box">
                              <h5>Dairy</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Milk</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Curd</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Paneer, Tofu & Cream</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Butter & Margarine</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Condensed, Powdered Milk</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Buttermilk & Lassi</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Yogurt & Shrikhand</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Flavoured, Soya Milk</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/frozen.svg" alt="" />
                          <h6>Frozen Foods</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box w-100">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Noodle, Pasta</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Instant Noodles</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Hakka Noodles</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cup Noodles</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Vermicelli</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Instant Pasta</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/biscuit.svg" alt="" />
                          <h6>Biscuits & Snacks</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Biscuits & Cookies</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Salted Biscuits</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Marie, Health, Digestive</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cream Biscuits & Wafers</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Glucose & Milk Biscuits</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cookies</a>
                              </li>
                            </ul>
                          </div>

                          <div class="list-2">
                            <div class="category-title-box">
                              <h5>Bakery Snacks</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Bread Sticks & Lavash</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Cheese & Garlic Bread</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Puffs, Patties, Sandwiches</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Breadcrumbs & Croutons</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li class="onhover-category-list">
                        <a href="javascript:void(0)" class="category-name">
                          <img src="./assets/svg/1/grocery.svg" alt="" />
                          <h6>Grocery & Staples</h6>
                          <i class="fa-solid fa-angle-right"></i>
                        </a>

                        <div class="onhover-category-box">
                          <div class="list-1">
                            <div class="category-title-box">
                              <h5>Grocery</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Lemon, Ginger & Garlic</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Indian & Exotic Herbs</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Vegetables</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Fruits</a>
                              </li>
                            </ul>
                          </div>

                          <div class="list-2">
                            <div class="category-title-box">
                              <h5>Organic Staples</h5>
                            </div>
                            <ul>
                              <li>
                                <a href="javascript:void(0)">Organic Dry Fruits</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Dals & Pulses</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Millet & Flours</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Sugar, Jaggery</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Masalas & Spices</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Rice, Other Rice</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Flours</a>
                              </li>
                              <li>
                                <a href="javascript:void(0)">Organic Edible Oil, Ghee</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>

                <div class="header-nav-middle">
                  <div class="main-nav navbar navbar-expand-xl navbar-light navbar-sticky">
                    <div class="offcanvas offcanvas-collapse order-xl-2" id="primaryMenu">
                      <div class="offcanvas-header navbar-shadow">
                        <h5>Menu</h5>
                        <button class="btn-close lead" type="button" data-bs-dismiss="offcanvas"
                          aria-label="Close"></button>
                      </div>
                      <div class="offcanvas-body">
                        <ul class="navbar-nav">
                          <li class="nav-item button-13">
                            <a class="nav-link">Home</a>
                          </li>

                          <li class="nav-item dropdown button-13 ">
                            <a class="nav-link dropdown-toggle " href="javascript:void(0)"
                              data-bs-toggle="dropdown">Brand</a>

                            <ul class="dropdown-menu my-2 show" data-bs-popper="none">
                              <li>
                                <a class="dropdown-item " href="shop-category-slider.html">Shop Category Slider</a>
                              </li>

                            </ul>
                          </li>


                          <li class="nav-item dropdown dropdown-mega button-13">
                            <a class="nav-link dropdown-toggle ps-xl-2 ps-0" href="javascript:void(0)"
                              data-bs-toggle="dropdown">Cars</a>

                            <div class="dropdown-menu dropdown-menu-2 my-2">
                              <div class="row">
                                <div class="dropdown-column col-xl-3">
                                  <h5 class="dropdown-header">
                                    Daily Vegetables
                                  </h5>
                                  <a class="dropdown-item" href="shop-left-sidebar.html">Beans & Brinjals</a>

                                </div>

                                <div class="dropdown-column col-xl-3">
                                  <h5 class="dropdown-header">Baby Tender</h5>
                                  <a class="dropdown-item" href="shop-left-sidebar.html">Beans & Brinjals</a>

                                </div>

                                <div class="dropdown-column col-xl-3">
                                  <h5 class="dropdown-header">
                                    Exotic Vegetables
                                  </h5>
                                  <a class="dropdown-item" href="shop-left-sidebar.html">Asparagus & Artichokes</a>


                                </div>

                                <div class="dropdown-column dropdown-column-img col-3"></div>
                              </div>
                            </div>
                          </li>

                          <li class="nav-item dropdown button-13">
                            <a class="nav-link dropdown-toggle " href="javascript:void(0)"
                              data-bs-toggle="dropdown">News</a>
                            <ul class="dropdown-menu my-2 show" data-bs-popper="none">
                              <li>
                                <a class="dropdown-item" href="blog-detail.html">Blog Detail</a>
                              </li>

                            </ul>
                          </li>

                          <!-- <li class="nav-item dropdown new-nav-item">
                          <label class="new-dropdown">New</label>
                          <a
                            class="nav-link dropdown-toggle"
                            href="javascript:void(0)"
                            data-bs-toggle="dropdown"
                            >Pages</a
                          >
                          <ul class="dropdown-menu">
                            <li class="sub-dropdown-hover">
                              <a class="dropdown-item" href="javascript:void(0)"
                                >Email Template
                                <span class="new-text"
                                  ><i
                                    class="fa-solid fa-bolt-lightning"
                                  ></i></span
                              ></a>
                              <ul class="sub-menu">
                                <li>
                                  <a
                                    href="./email-templete/abandonment-email.html"
                                    >Abandonment</a
                                  >
                                </li>
                                <li>
                                  <a
                                    href="./email-templete/offer-template.html"
                                    >Offer Template</a
                                  >
                                </li>
                                <li>
                                  <a href="./email-templete/order-success.html"
                                    >Order Success</a
                                  >
                                </li>
                                <li>
                                  <a
                                    href="./email-templete/reset-password.html"
                                    >Reset Password</a
                                  >
                                </li>
                                <li>
                                  <a href="./email-templete/welcome.html"
                                    >Welcome template</a
                                  >
                                </li>
                              </ul>
                            </li>
                            <li class="sub-dropdown-hover">
                              <a class="dropdown-item" href="javascript:void(0)"
                                >Invoice Template
                                <span class="new-text"
                                  ><i
                                    class="fa-solid fa-bolt-lightning"
                                  ></i></span
                              ></a>
                              <ul class="sub-menu">
                                <li>
                                  <a href="./invoice/invoice-1.html"
                                    >Invoice 1</a
                                  >
                                </li>

                                <li>
                                  <a href="./invoice/invoice-2.html"
                                    >Invoice 2</a
                                  >
                                </li>

                                <li>
                                  <a href="./invoice/invoice-3.html"
                                    >Invoice 3</a
                                  >
                                </li>
                              </ul>
                            </li>
                            <li>
                              <a class="dropdown-item" href="404.html">404</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="about-us.html"
                                >About Us</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="cart.html">Cart</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="contact-us.html"
                                >Contact</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="checkout.html"
                                >Checkout</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="coming-soon.html"
                                >Coming Soon</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="compare.html"
                                >Compare</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="faq.html">Faq</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="order-success.html"
                                >Order Success</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="order-tracking.html"
                                >Order Tracking</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="otp.html">OTP</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="search.html"
                                >Search</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="user-dashboard.html"
                                >User Dashboard</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="wishlist.html"
                                >Wishlist</a
                              >
                            </li>
                          </ul>
                        </li> -->

                          <!-- <li class="nav-item dropdown">
                          <a
                            class="nav-link dropdown-toggle"
                            href="javascript:void(0)"
                            data-bs-toggle="dropdown"
                            >Seller</a
                          >
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="seller-become.html"
                                >Become a Seller</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="seller-dashboard.html"
                                >Seller Dashboard</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="seller-detail.html"
                                >Seller Detail</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="seller-detail-2.html"
                                >Seller Detail 2</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="seller-grid.html"
                                >Seller Grid</a
                              >
                            </li>
                            <li>
                              <a class="dropdown-item" href="seller-grid-2.html"
                                >Seller Grid 2</a
                              >
                            </li>
                          </ul>
                        </li> -->
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="header-nav-right">
                  <button class="btn deal-button" data-bs-toggle="modal" data-bs-target="#deal-box"
                    style="background-color: #acacac;color: #5e5e5e;text-decoration: line-through;">
                    <i data-feather="zap"></i>
                    <span>Deal Today</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- Header End -->

      <!-- mobile fix menu start -->
      <div class="mobile-menu d-md-none d-block mobile-cart">
        <ul>
          <li class="active">
            <a href="index.html">
              <i class="iconly-Home icli"></i>
              <span>Home</span>
            </a>
          </li>

          <li class="mobile-category">
            <a href="javascript:void(0)">
              <i class="iconly-Category icli js-link"></i>
              <span>Category</span>
            </a>
          </li>

          <li>
            <a href="search.html" class="search-box">
              <i class="iconly-Search icli"></i>
              <span>Search</span>
            </a>
          </li>

          <!-- <li>
        <a href="wishlist.html" class="notifi-wishlist">
          <i class="iconly-Heart icli"></i>
          <span>My Wish</span>
        </a>
      </li>

      <li>
        <a href="cart.html">
          <i class="iconly-Bag-2 icli fly-cate"></i>
          <span>Cart</span>
        </a>
      </li> -->
        </ul>
      </div>
      <!-- mobile fix menu end -->

      <!-- Breadcrumb Section Start -->
      <section class="breadscrumb-section pt-0 ">
        <div class="container-fluid-lg">
          <div class="row">
            <div class="col-12">
              <div class="breadscrumb-contain py-3">
                <h2 class="mb-2">Log In</h2>
                <nav>
                  <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item">
                      <a href="index.html">
                        <i class="fa-solid fa-house"></i>
                      </a>
                    </li>
                    <li class="breadcrumb-item active">Log In</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Breadcrumb Section End -->

      <!-- log in section start -->
      <section class="log-in-section background-image-2 section-b-space">
        <div class="container-fluid-lg w-100">
          <div class="row">
            <!-- <div class="col-xxl-6 col-xl-6 col-lg-6 d-lg-block d-none ms-auto">
          <div class="image-contain">
            <img src="./assets/images/svg/undraw_electric_car_b-7-hl.svg" class="img-fluid" alt="" />
          </div>
        </div> -->

            <div class="col-xxl-4 col-xl-4 col-lg-6 col-sm-8 mx-auto w-60">
              <div class="log-in-box">
                <div class="log-in-title">
                  <h3>Welcome To <b>ApexAutos</b>
                  </h3>
                  <h4>Log In Your Account</h4>


                </div>

                <div class="input-box">
                  <form class="row g-3" id="form-1" action="login" method="post">
                    <div class="col-12">
                      <div class="form-floating theme-form-floating log-in-form input admin-input admin-col mt-4">
                        <input type="text" name="admin" class="form-control input " id="admin"
                          placeholder="Admin keycode" />
                        <label for="admin">Admin keycode </label>
                        <span class="form-msg"></span>
                      </div>
                    </div>
                    <div class="col-12">
                      <div class="form-floating theme-form-floating log-in-form input email-input">
                        <input type="text" name="email" class="form-control input " id="email"
                          placeholder="Email Address" />
                        <label for="email">Email Address</label>
                        <span class="form-msg"></span>
                      </div>
                    </div>

                    <div class="col-12">
                      <div class="form-floating theme-form-floating log-in-form  input password-input ">
                        <input type="password" name="password" class="form-control input" id="password"
                          placeholder="Password" />
                        <label for="password">Password</label>
                        <span class="form-msg"></span>
                      </div>
                    </div>

                    <div class="col-12">
                      <div class="forgot-box">
                        <div class="form-check ps-0 m-0 remember-box">
                          <input class="checkbox_animated check-box" type="checkbox" id="flexCheckDefault" />
                          <label class="form-check-label" for="flexCheckDefault">Remember me</label>
                        </div>
                        <a href="mail" class="forgot-password">Forgot Password?</a>
                      </div>
                    </div>

                    <div class="col-12">
                      <input class="button-38  w-100 justify-content-center" value="Log In" type="submit">
                    </div>
                    <c:if test="${not empty errorMessage}">
                      <div class="alert alert-danger">${errorMessage}</div>
                    </c:if>
                  </form>
                </div>

                <div class="other-log-in">
                  <h6>or</h6>
                </div>

                <div class="log-in-button">
                  <ul>
                    <li>
                      <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/apex_autos_servlet/LoginGoogleHandler&response_type=code
		   &client_id=230536205740-9e80cs0d1mp22glhj7vv2utv20iubva6.apps.googleusercontent.com&approval_prompt=force"
                        class="button-38 google-button w-100">
                        <img src="./assets/images/inner-page/google.png" class="blur-up lazyload" alt="" />
                        Log In with Google
                      </a>
                    </li>
                  </ul>
                </div>

                <div class="other-log-in">
                  <h6></h6>
                </div>

                <div class="sign-up-box">
                  <h4>Don't have an account?</h4>
                  <a href="register">Sign Up</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- log in section end -->

      <!-- Footer Section Start -->
      <footer class="section-t-space py-3">
        <div class="container-fluid-lg">
          <div class="service-section pb-3">
            <div class="row g-3">
              <div class="col-12">
                <div class="service-contain py-2">
                  <div class="service-box">
                    <div class="service-image">
                      <img src="./assets/svg/sedan.png" class="blur-up lazyload" alt="" />
                    </div>

                    <div class="service-detail">
                      <h5>Newest Cars</h5>
                    </div>
                  </div>

                  <div class="service-box">
                    <div class="service-image">
                      <img src="./assets/svg/delivery.svg" class="blur-up lazyload" alt="" />
                    </div>

                    <div class="service-detail">
                      <h5>Free Delivery For Order Over $50k</h5>
                    </div>
                  </div>

                  <div class="service-box">
                    <div class="service-image">
                      <img src="./assets/svg/discount.svg" class="blur-up lazyload" alt="" />
                    </div>

                    <div class="service-detail">
                      <h5>Monthly Mega Discounts</h5>
                    </div>
                  </div>

                  <div class="service-box">
                    <div class="service-image">
                      <img src="./assets/svg/market.svg" class="blur-up lazyload" alt="" />
                    </div>

                    <div class="service-detail">
                      <h5>Best Price On The Market</h5>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="main-footer section-b-space section-t-space py-3">
            <div class="row g-md-4 g-3">
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="footer-logo">
                  <div class="theme-logo">
                    <a href="index.html">
                      <img src="./assets/images/logo/1.png" class="blur-up lazyload" alt="" />
                    </a>
                  </div>

                  <div class="footer-logo-contain">
                    <p>
                      Discover a <b>seamless online car buying experience</b> with unbeatable prices,
                      extensive selections,
                      and
                      convenient delivery.
                    </p>

                    <ul class="address">
                      <li>
                        <i data-feather="home"></i>
                        <a href="javascript:void(0)">FPT University
                        </a>
                      </li>
                      <li>
                        <i data-feather="mail"></i>
                        <a href="javascript:void(0)">niggawhat@fpt.edu.vn</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>

              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                <label class="switch">
                  <input type="checkbox" checked="checked">
                  <div class="button">
                    <div class="light"></div>
                    <div class="dots"></div>
                    <div class="characters"></div>
                    <div class="shine"></div>
                    <div class="shadow"></div>
                  </div>
                </label>
              </div>

              <div class="col-xl col-lg-2 col-sm-3">
                <div class="footer-title">
                  <h4>Useful Links</h4>
                </div>

                <div class="footer-contain">
                  <ul>
                    <li>
                      <a href="index.html" class="text-content">Home</a>
                    </li>
                    <li>
                      <a href="shop-left-sidebar.html" class="text-content">Shop</a>
                    </li>
                    <li>
                      <a href="about-us.html" class="text-content">About Us</a>
                    </li>
                    <li>
                      <a href="blog-list.html" class="text-content">Blog</a>
                    </li>
                    <li>
                      <a href="contact-us.html" class="text-content">Contact Us</a>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="col-xl-2 col-sm-3">
                <div class="footer-title">
                  <h4>Help Center</h4>
                </div>

                <div class="footer-contain">
                  <ul>
                    <li>
                      <a href="order-success.html" class="text-content">Your Order</a>
                    </li>
                    <li>
                      <a href="user-dashboard.html" class="text-content">Your Account</a>
                    </li>
                    <li>
                      <a href="order-tracking.html" class="text-content">Track Order</a>
                    </li>
                    <li>
                      <a href="wishlist.html" class="text-content">Your Wishlist</a>
                    </li>
                    <li>
                      <a href="search.html" class="text-content">Search</a>
                    </li>
                    <li>
                      <a href="faq.html" class="text-content">FAQ</a>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="footer-title">
                  <h4>Contact Us</h4>
                </div>

                <div class="footer-contact">
                  <ul>
                    <li>
                      <div class="footer-number">
                        <i data-feather="phone"></i>
                        <div class="contact-number">
                          <h6 class="text-content">Hotline 24/7 :</h6>
                          <h5>+91 888 104 2340</h5>
                        </div>
                      </div>
                    </li>

                    <li>
                      <div class="footer-number">
                        <i data-feather="mail"></i>
                        <div class="contact-number">
                          <h6 class="text-content">Email Address :</h6>
                          <h5>apexautos@hotmail.com</h5>
                        </div>
                      </div>
                    </li>

                    <li class="social-app">
                      <h5 class="mb-2 text-content">Download App :</h5>
                      <ul>
                        <li class="mb-0">
                          <a href="https://play.google.com/store/apps" target="_blank">
                            <img src="./assets/images/playstore.svg" class="blur-up lazyload" alt="" />
                          </a>
                        </li>
                        <li class="mb-0">
                          <a href="https://www.apple.com/in/app-store/" target="_blank">
                            <img src="./assets/images/appstore.svg" class="blur-up lazyload" alt="" />
                          </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="sub-footer section-small-space py-3">
            <div class="reserve">
              <h6 class="text-content">Â©2022 ApexAutos All rights reserved</h6>
            </div>

            <div class="payment">
              <img src="./assets/images/payment/1.png" class="blur-up lazyload" alt="" />
            </div>

            <div class="social-link">
              <h6 class="text-content">Stay connected :</h6>
              <ul>
                <li>
                  <a href="https://www.facebook.com/" target="_blank">
                    <i class="fa-brands fa-facebook-f"></i>
                  </a>
                </li>
                <li>
                  <a href="https://twitter.com/" target="_blank">
                    <i class="fa-brands fa-twitter"></i>
                  </a>
                </li>
                <li>
                  <a href="https://www.instagram.com/" target="_blank">
                    <i class="fa-brands fa-instagram"></i>
                  </a>
                </li>
                <li>
                  <a href="https://in.pinterest.com/" target="_blank">
                    <i class="fa-brands fa-pinterest-p"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
      <!-- Footer Section End -->

      <!-- Tap to top start -->
      <div class="theme-option">
        <div class="back-to-top">
          <a id="back-to-top" href="#">
            <i class="fas fa-chevron-up"></i>
          </a>
        </div>
      </div>
      <!-- Tap to top end -->

      <!-- Bg overlay Start -->
      <div class="bg-overlay"></div>
      <!-- Bg overlay End -->

      <!-- latest jquery-->
      <script src="./assets/js/jquery-3.6.0.min.js"></script>

      <!-- Bootstrap js-->
      <script src="./assets/js/bootstrap/bootstrap.bundle.min.js"></script>
      <script src="./assets/js/bootstrap/popper.min.js"></script>

      <!-- feather icon js-->
      <script src="./assets/js/feather/feather.min.js"></script>
      <script src="./assets/js/feather/feather-icon.js"></script>

      <!-- Slick js-->
      <script src="./assets/js/slick/slick.js"></script>
      <script src="./assets/js/slick/slick-animation.min.js"></script>
      <script src="./assets/js/slick/custom_slick.js"></script>

      <!-- Lazyload Js -->
      <script src="./assets/js/lazysizes.min.js"></script>

      <!-- script js -->
      <script src="./assets/js/script.js"></script>

      <!-- validation.js -->
      <script src="./assets/js/valid.js"></script>
      <script>
        validator({
          form: "#form-1",
          inputSelector: ".input",
          errorSelector: ".form-msg",
          rules: [
            // validator.isRequired("input[type=radio]"),
            // validator.isRequired("input[type=file]"),
            // validator.isRequired("select"),
            validator.isRequired("#email"),
            validator.isEmail("#email"),
            validator.minLength("#password", 6),
            validator.isRequired("#password"),
          ],

        });
      </script>
    </body>

    </html>