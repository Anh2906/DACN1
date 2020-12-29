
<?php 
include'inc/header.php';
include'config/config.php';

 ?>
 <style>
       div.product-image img{
        width: 50px;height: 200px;
    }
    div.product-title {
        width: 265xpx;height: 100px;
    }

 </style>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
<body>
    <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <!-- <?php  ?> -->
                <ul class="breadcrumb">
                    <?php
                               $kt = 'SELECT * FROM sanpham where masp='.$_GET["id"];
                                $result = mysqli_query($conn,$kt);
                                $data =mysqli_fetch_row($result);
                           ?>
                    <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="#"><?php echo $data[1]?></a></li>
                
                </ul>
            </div>
    </div>
        <!-- Breadcrumb End -->
    <!-- Product Detail Start -->
    <div class="product-detail">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <form action="Cart.php" method="get" >
                        <input type='hidden' name="action" value="add">
                    <div class="product-detail-top">
                        <div class="row align-items-center">
                            <div class="col-md-5">
                                <div class="product-slider-single normal-slider">
                                    <img src="<?php echo $data[4] ?>" alt="Product Image">
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="product-content">
                                   <div class="title"><h2><?php echo $data[1] ?></h2></div>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="price">
                                            <h4>Giá:</h4>
                                            <p><?php echo number_format($data[2])  ?></p>
                                        </div>

                                        <div class="quantity">
                                            
                                            <h4>Số Lượng:</h4>
                                            <div class="qty">
                                              <!--   <button class="btn-minus"><i class="fa fa-minus"></i></button> -->
                                                <input type="hidden" name="id" value="<?php echo $data[0]?>">
                                                <input type="number" min=1 value="1" id="quantity" name="quantity">
                                       <!--          <button class="btn-plus"><i class="fa fa-plus"></i></button> -->
                                            </div>
                                             
                                        </div>
                                        <div class="action">
                                           <!--  <a class="btn" href="Cart.php"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a> -->
                                           <button class="btn" type="submit"> <i class="fa fa-shopping-cart "   ></i> Thêm vào giỏ hàng </button>
                                            <a class="btn" href="Cart.php?id=<?php echo $data[0]?>"><i class="fa fa-shopping-bag"></i>Mua hàng</a>
                                            
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </form>


                    <div class="row product-detail-bottom">
                        <div class="col-lg-12">
                            <ul class="nav nav-pills nav-justified">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#description">Mô tả</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div id="description" class="container tab-pane active">
                                    <h4>Mô tả</h4>
                                    <p><?php echo $data[5] ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                       <!--  <div class="section-header">
                            <h1>Sản Phẩm liên quan</h1>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="featured-product product">
        <div class="container-fluid">
            <div class="section-header">
                <a href="chamsocda.php"><h2>Sản phẩm bán chạy</h2></a>
            </div>
            <div class="row align-items-center product-slider product-slider-4">
                            <?php 
                                $tv="select * from sanpham where danhgia  ";
                                $tv_1 = mysqli_query($conn,$tv);
                                while($tv_2 = mysqli_fetch_array($tv_1))
                                 {  
                                ?>
                            <div class="col-lg-3">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#"><?php echo $tv_2[1] ?></a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.php">
                                            <img src="<?php echo $tv_2[4] ?>" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="chitietsanpham?id=<?php echo $tv_2["masp"]?>"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><?php echo $tv_2[2] ?></h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <?php 
                            }
                         ?>
            </div>
        </div>
    </div>      
        

<script type="text/javascript" >   
function addCart(id) {
    arlert(id);
    // body...
}
</script> 
<!-- JavaScript Libraries -->
<?php 
    include'inc/footer.php';
 ?>


 
