
<style>
   .cart-page .table button {
    width: 100px;
    height: 30px;
}
</style>

 <?php
    include 'inc/header.php';
    include 'config/config.php';
    $cart = (isset($_SESSION['Cart']))? $_SESSION['Cart'] : [];
    // var_dump($_SESSION['Cart']);
 ?>
 
 <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
                   
                    <li class="breadcrumb-item active">Cart</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Cart Start -->
        <div class="cart-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="cart-page-inner">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Sản Phẩm</th>
                                            <th>Hình</th>
                                            <th>Giá</th>
                                            <th>Số Lượng</th>
                                            <th>Total</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody class="align-middle">
                                       
                                        <?php foreach ($cart as $key => $value):    
                                            ?>
                                        <tr>
                                            <td><p><?php echo $value['name'] ?></p></td>
                                            <td>
                                            <div class="img">
                                                <a href="#"><img src="<?php echo $value['hinh']?>"></a>
                                            </div>
                                            </td>
                                            <td><?php echo number_format($value['gia']) ?></td>
                                             <td style="width: 150px">
                                                <form method="GET" action="Cart.php">                                             
                                                        <!-- <div class="qty"> -->
                                                        <input type="hidden" name="action" value ="update">
                                                        <input type="hidden" name="id" value="<?php echo $value['id']?>">
                                                            
                                                            <input type="number" min=1 name="quantity" value="<?php echo $value['quantity']?>"> 
                                                          <button type="submit" >F5</button>      
                                                                                                                    
                                               </form>    
                                                
                                            </td>
                                            <td><?php echo number_format ($value['quantity'] * $value['gia'] )?></td>
                                            <td><a href="Cart.php?id=<?php echo $value['id'] ?>& action=del"><i class="fa fa-trash"></i></a></td>
                                          
                                        </tr>

                                        <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                     <div class="col-lg-4">
                        <div class="cart-page-inner">
                            <div class="row">
                                
                                <div class="col-md-12">
                                    <div class="cart-summary">

                                        <div class="cart-content">
                                            <h1>Tổng Hóa Đơn</h1>
                                            <!--<?php  ($tong) ?>-->
                                            <h2>Tổng:<span>  <?php echo number_format(Tong($cart)) ?>  </span></h2>
                                        </div>
                                        <div class="cart-btn">
                                          <!--   <button>Update Cart</button> -->
                                            <a href="thanhtoan.php "><button >Thanh Toán</button></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->


<?php 
    include 'inc/footer.php';
 ?>