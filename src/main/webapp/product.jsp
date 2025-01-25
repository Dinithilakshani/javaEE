<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/16/2025
  Time: 6:39 AM
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ShopEasy - Products</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .product-card {
            transition: transform 0.3s;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .product-card img {
            height: 200px;
            object-fit: cover;
        }
        .filters {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 20px;
        }
    </style>
</head>
<body >
<form action="productform" method="post">

<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">

</nav>


<div class="container py-5" >
    <div class="row">

        <div class="col-lg-3">
            <div class="filters">
                <h4 class="mb-4">Filters</h4>


                <div class="mb-4">
                    <h6>Categories</h6>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="electronics">
                        <label class="form-check-label" for="electronics">Electronics</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="fashion">
                        <label class="form-check-label" for="fashion">Fashion</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="home">
                        <label class="form-check-label" for="home">Home & Living</label>
                    </div>
                </div>


                <div class="mb-4">
                    <h6>Price Range</h6>
                    <div class="range">
                        <input type="range" class="form-range" min="0" max="1000" id="priceRange">
                        <div class="d-flex justify-content-between">
                            <span>$0</span>
                            <span>$1000</span>
                        </div>
                    </div>
                </div>


                <div class="mb-4">
                    <h6>Sort By</h6>
                    <select class="form-select">
                        <option>Price: Low to High</option>
                        <option>Price: High to Low</option>
                        <option>Newest First</option>
                        <option>Popular</option>
                    </select>
                </div>
            </div>
        </div>


        <div class="col-lg-9">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2>All Products</h2>
                <div class="d-flex align-items-center">
                    <span class="me-2">View:</span>
                    <div class="btn-group" role="group">
                        <button class="btn btn-outline-primary active">
                            <i class="fas fa-grid-3"></i>
                        </button>
                        <button class="btn btn-outline-primary">
                            <i class="fas fa-list"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card product-card h-100">
                        <img src="/api/placeholder/300/300" class="card-img-top" alt="Product">
                        <div class="card-body">
                            <h5 class="card-title">Smart Watch Pro</h5>
                            <p class="text-muted mb-2">Electronics</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">$199.99</h6>
                                <div class="d-flex gap-2">
                                    <button class="btn btn-outline-primary btn-sm">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                    <button class="btn btn-primary btn-sm">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <nav class="mt-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>


<footer class="bg-dark text-light py-4">

</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</form>
</body>
</html>
