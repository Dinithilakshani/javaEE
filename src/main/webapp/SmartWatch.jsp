<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/19/2025
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .product-container {
        padding: 24px 16px;
        background-color: #fff;
    }

    .product-image {
        max-width: 100%;
        height: auto;
    }

    .product-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .product-code {
        color: #666;
        margin-bottom: 20px;
    }

    .product-specs {
        list-style: none;
        padding-left: 0;
    }

    .product-specs li {
        margin-bottom: 8px;
        position: relative;
        padding-left: 20px;
    }

    .product-specs li:before {
        content: "•";
        position: absolute;
        left: 0;
    }

    .buy-button {
        background-color: #e31837;
        color: white;
        border: none;
        padding: 15px 30px;
        width: 100%;
        text-transform: uppercase;
        margin: 20px 0;
    }

    .find-boutique {
        text-decoration: none;
        color: #000;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        margin: 20px 0;
    }

    .variations-wrapper,
    .straps-wrapper {
        margin: 20px 0;
        position: relative;
    }

    .carousel-container {
        overflow: hidden;
        position: relative;
    }

    .wishlist-icon {
        position: absolute;
        top: 10px;
        right: 10px;
        background: none;
        border: none;
        font-size: 24px;

        .specs-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 2rem;
        }

        .accordion-button {
            font-weight: 500;
            color: #333;
            background-color: #fff;
            padding: 1.5rem 1rem;
        }

        .accordion-button:not(.collapsed) {
            background-color: #fff;
            color: #333;
            box-shadow: none;
        }

        .accordion-button:focus {
            box-shadow: none;
            border-color: rgba(0,0,0,.125);
        }



        .show-more-btn {
            display: block;
            width: 200px;
            margin: 2rem auto;
            padding: 0.75rem 1.5rem;
            border: 1px solid #333;
            background: transparent;
            border-radius: 25px;
            text-transform: uppercase;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .show-more-btn:hover {
            background: #333;
            color: white;
        }

        .download-btn {
            display: block;
            width: 300px;
            margin: 2rem auto;
            padding: 1rem 2rem;
            background: #000;
            color: white;
            border: none;
            border-radius: 5px;
            text-transform: uppercase;
            font-size: 0.9rem;
            text-align: center;
            text-decoration: none;
        }

        .download-btn:hover {
            background: #333;
            color: white;
        }

        h1 {
            text-align: center;
            margin-bottom: 3rem;
        }

    }
    .footer {
        background-color: #333;
        color: #fff;
        padding: 60px 0 30px;
    }

    .footer h5 {
        color: #fff;
        font-weight: 600;
        margin-bottom: 20px;
    }

    .footer-links {
        list-style: none;
        padding: 0;
    }

    .footer-links li {
        margin-bottom: 10px;
    }

    .footer-links a {
        color: #aaa;
        text-decoration: none;
        transition: color 0.3s;
    }

    .footer-links a:hover {
        color: #fff;
    }

    .social-icons a {
        color: #fff;
        margin-right: 15px;
        font-size: 20px;
    }

    .footer-bottom {
        border-top: 1px solid #555;
        margin-top: 30px;
        padding-top: 20px;
        text-align: center;
    }
</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="position-relative">
                <img src="imges/img_9.png" alt="TISSOT PR516 POWERMATIC 80" class="product-image">
                <button class="wishlist-icon">♡</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-container">
                <h1 class="product-title">TISSOT PR516 POWERMATIC 80</h1>
                <p class="product-code">T149.407.11.051.00</p>

                <ul class="product-specs">
                    <li>Diameter: 38 mm</li>
                    <li>Up to 80 hours power reserve</li>
                    <li>316L stainless steel case</li>
                </ul>

                <a href="#" class="text-dark">See more</a>

                <div class="variations-wrapper">
                    <div class="d-flex justify-content-between align-items-center">
                        <span>See the 10 available variations</span>
                        <button class="btn btn-link">→</button>
                    </div>
                </div>

                <button class="buy-button">BUY ONLINE</button>

                <a href="#" class="find-boutique">
                    <i class="location-icon">📍</i>
                    FIND A BOUTIQUE
                </a>

                <div class="straps-wrapper">
                    <div class="d-flex justify-content-between align-items-center">
                        <span>See the 21 compatible straps</span>
                        <button class="btn btn-link">→</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="specs-container">
    <h1>Technical specificities</h1>





    <div class="accordion" id="specificationsAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#description">
                    Description
                </button>
            </h2>
            <div id="description" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    This watch showcases a sleek 38mm stainless-steel case and a dynamic dial, embodying the spirit of speed and precision. Equipped with a Powermatic 80 movement, it offers unmatched accuracy for the active lifestyle. Super-LumiNova®️-coated indices ensure visibility in all conditions. Its versatile design is complemented by a quick interchangeable bracelet system, perfect for transitioning from business meetings to casual outings. The PR516 Powermatic is a modern classic, blending with Tissot's rich heritage.



                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#aboutWatch">
                    About the watch
                </button>
            </h2>
            <div id="aboutWatch" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    SKU     T149407110510<br>

                    Collection Sport

                    Weight  146,00

                    Warranty 2 Years of Warranty

                    Country of Manufacture

                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#caseCrystal">
                    Case & crystal
                </button>
            </h2>
            <div id="caseCrystal" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    Length
                    37,00
                    Width
                    38,00
                    Thickness
                    11,18
                    Lugs
                    20.00
                    Water resistance
                    Water-resistant up to a pressure of 10 bar (100 m / 330 ft)
                    Reference Shape
                    LIB_ROUND
                    Case Material
                    316L stainless steel case
                    Case options
                    Mineral bezel ring, see-through caseback
                    Crystal
                    Scratch-resistant sapphire crystal with antireflective coating
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#movement">
                    Movement
                </button>
            </h2>
            <div id="movement" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    Movement specifications go here.

                    Energy
                    Automatic
                    Movement
                    SWISSAUTOMATIC
                    Power Reserve
                    power reserve up to 80 hours
                    Functions
                    LIB_PATENTED-NIVACHRON-BALANCE-SPRING
                    Caliber
                    11 1/2'''
                    Diameter (mm)
                    25,6
                    COSC
                    No
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#dial">
                    Dial
                </button>
            </h2>
            <div id="dial" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    Dial specifications go here.
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#strap">
                    Strap
                </button>
            </h2>
            <div id="strap" class="accordion-collapse collapse" data-bs-parent="#specificationsAccordion">
                <div class="accordion-body">
                    Strap specifications go here.
                </div>
            </div>
        </div>
    </div>


</div>
<footer class="footer">
    <div class="container">
        <div class="row">
            <!-- Company Info -->
            <div class="col-md-4 mb-4">
                <h5>About Us</h5>
                <p>Your company description goes here. Add a brief overview of your business and its mission.</p>
            </div>

            <!-- Quick Links -->
            <div class="col-md-4 mb-4">
                <h5>Quick Links</h5>
                <ul class="footer-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="col-md-4 mb-4">
                <h5>Contact Us</h5>
                <ul class="footer-links">
                    <li>Dinithi Lakshani</li>

                    <li>Phone: 077 6789890</li>
                    <li>Email: dinithi.com</li>
                </ul>

                <!-- Social Media Icons -->
                <div class="social-icons mt-3">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>

        <!-- Footer Bottom -->
        <div class="footer-bottom">
            <p class="mb-0">&copy; 2025 Your Company Name. All rights reserved.</p>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>



</html>
