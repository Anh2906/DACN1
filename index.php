
<?php 
    include 'config/config.php';
    include 'inc/header.php';
    include 'inc/slider.php';
?>
<style>
   div.product-image img{
        width: 50px;height: 180px;
    }
    div.product-title {
        width: 265xpx;height: 100px;
    }
</style>
 
        <!-- Featured Product Start -->
        <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <a href="chamsocda.php"><h2>Chăm sóc da</h2></a>
                </div>
        
                            <div class="row align-items-center product-slider product-slider-4">
                                <?php 
                                    $tv="select * from sanpham where madm='csd' order by rand() limit 0,8   ";
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
                                                <a href="Cart.php?id=<?php echo $tv_2["masp"]?>"><i class="fa fa-cart-plus"></i></a>
                                                
                                                <a href="chitietsanpham.php?id=<?php echo $tv_2[0]?>"><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-price">
                                            <h3><?php echo number_format($tv_2[2]) ?></h3>
                                            <a class="btn" href="Cart.php?id=<?php echo $tv_2[0]?>"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                                <?php 
                                }
                             ?>
                            </div>
            </div>
        </div>   

        <div></div>
    
         <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <a href="chamsocda.php"><h2>Trang điểm</h2></a>
                </div>
        
                            <div class="row align-items-center product-slider product-slider-4">
                                <?php 
                                    $tv="select * from sanpham where madm='td' order by rand() limit 0,6   ";
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
                                                <a href="Cart.php?id=<?php echo $tv_2["masp"]?>"><i class="fa fa-cart-plus"></i></a>
                                                
                                                <a href="chitietsanpham.php?id=<?php echo $tv_2[0]?>"><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-price">
                                            <h3><?php echo number_format($tv_2[2]) ?></h3>
                                            <a class="btn" href="Cart.php?id=<?php echo $tv_2[0]?>"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                                <?php 
                                }
                             ?>
                            </div>
            </div>
        </div>   

        <div></div>

       <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <a href="chamsocda.php"><h2>Phụ kiện</h2></a>
                </div>
        
                            <div class="row align-items-center product-slider product-slider-4">
                                <?php 
                                    $tv="select * from sanpham where madm='pk' order by rand() limit 0,6   ";
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
                                        <!-- nó gọi đúng mà e ssai div hay j á -->
                                        <div class="product-image">
                                            <a href="product-detail.php">
                                                <img src="<?php echo $tv_2[4] ?>" alt="Product Image">
                                            </a>
                                            <div class="product-action">
                                                <a href="Cart.php?id=<?php echo $tv_2["masp"]?>"><i class="fa fa-cart-plus"></i></a>
                                                
                                                <a href="chitietsanpham.php?id=<?php echo $tv_2[0]?>"><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-price">
                                            <h3><?php echo number_format($tv_2[2]) ?></h3>
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

        <div></div>


<?php include 'inc/footer.php' ?>  