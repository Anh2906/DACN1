<?php
     session_start();
     include 'config/config.php';
     $cart = (isset($_SESSION['Cart']))? $_SESSION['Cart'] : [];
     include'cart-funcion.php'
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>AD COSMETIC</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
<body>
    <!-- Top bar Start -->
    <div class="top-bar">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <i class="fa fa-envelope"></i>
                        D17-TH03: Nguyễn Phước Ngọc Ánh_DH51700032 </br>
                </div>
                <div class="col-sm-6">
                    <i class="fa fa-envelope"></i>D17-TH04: Phùng Hữu Đức_DH51701128
                </div>
            </div>
        </div>
    </div>
    <!-- Nav Bar Start  -->
    <div class="nav">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a href="#" class="navbar-brand">MENU</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto">
                    <a href="index.php" class="nav-item nav-link active">Trang Chủ</a>
                    <a href="chamsocda.php" class="nav-item nav-link">Chăm sóc da</a>
                    <a href="trangdiem.php" class="nav-item nav-link">Trang điểm</a>
                    <a href="phukien.php" class="nav-item nav-link">Phụ kiện</a>
                </div>
                <div class="navbar-nav ml-auto">
                    <div class="nav-item dropdown">
                        <a href="login.php" class="nav-link dropdown-toggle" data-toggle="dropdown" >
                            <?php 
                                if (isset($_SESSION['taikhoan']))
                                    {
                                        echo $_SESSION['taikhoan']; 
                                    }
                                else
                                        echo "Tài Khoản";
                            ?>
                        </a>
                        <div class="dropdown-menu">
                            <a href="login.php" class="dropdown-item">Login & Register</a>
                            <a href="logout.php" class="dropdown-item">Logout</a>
                        </div>
                </div>
                </div>
                </div>
            </nav>
        </div>
    </div>
    
        <!-- Nav Bar End -->      
        <!-- logo + giohang + search -->
        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index.php">
                                <h2>AD COSMETIC</h2>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form action="timkiem.php" method="get">
                            <div class="search">
                                <input type="text" placeholder="Search" name="khoa">
                                <button><i class="fa fa-search" name="timkiem" ></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                             <a href="view-cart.php" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span> (<?php echo tongitem($cart) ?>)</span>
                            </a>
                    
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar End -->  