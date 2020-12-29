 <?php
    include 'inc/header.php';
    include 'config/config.php';
        $cart = (isset($_SESSION['Cart']))? $_SESSION['Cart'] : [];
 ?>
<style>
    div.product-image img{
        width: 50px;
        height: 50px;
    }
    .border{
        border: 2px solid #FF6F61;
        padding-left  : 20px;
        width: 500px;
    .btn{
       margin: 100px ;
    }


    }
</style>

        
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
           
                    <li class ="breadcrumb-item"><h4> Thông tin giao hàng</h4></li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- bill Start -->
       
        <div class="login">
            
            <div class="container-fluid">
                <form action="thanhtoan.php" method="post"  >
                    <div class="row">
                        <div class="col-lg-7">    
                            <div class="register-form">
                                <div class="row">
                                    <div class="col-md-11">
                                        <input class="form-control" placeholder="Họ và tên" type="text" id="name" name="name" >
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" placeholder="Email" type="text" id="email" name="email" >
                                    </div>
                                    <div class="col-md-5">
                                        <input class="form-control" placeholder="Số điện thoại" type="text" id="sdt" name="sdt" >
                                    </div>
                                    <div class="col-md-11">
                                        <input class="form-control" placeholder="Địa chỉ" type="text" id="dc" name="dc" >
                                    </div>
                                    <div class="col-md-6">
                                        <br>
                                    <label>Phương thức thanh toán:<br></label>
                                    </div>
                                    <div >
                                         <select class="border " name="gh">
                                         <option value="0">Thanh toán khi nhận hàng tại TP.HCM và Hà Nội (COD)</option> 
                                        
                                        <option value="1">Chuyển khoản trước tại ngân hàng</option>
                                        </select>
                                    </div>
                                   
                                    <hr>
                                    <div class="col-md-6">
                                     <a href="view-cart.php"><h10>>Giỏ hàng</h10></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <button class="btn" name="DH" type="submit">Hoàn tất đơn hàng</button>
                                    </div>
                                </div>
                             </div>
                         </div>
                
               <!--   tong hoa don -->
                    <div class="col-lg-4">
                            <div class="cart-page-inner">
                                <div class="row">
                                    
                                    <div class="col-md-12">
                                        <div class="cart-summary">

                                            <div class="cart-content" >
                                                <h1>Tổng Hóa Đơn</h1>
                                                <!--<?php  ($tong) ?>-->
                                            <table border="0">
                                                    <?php foreach ($cart as $key => $value):    
                                                ?>
                                                <tr>
                                                    <td><p name="tensp"><?php echo $value['name'] ?></p></td>
                                                    <td>
                                                    <div class="product-image">
                                                        <a href="#"><img src="<?php echo $value['hinh']?>"></a>
                                                    </div>
                                                    </td>
                                                    <td name="gia"><?php echo number_format($value['gia']) ?></td>
                                                </tr>
                                                   <?php endforeach ?>
                                            </table>
                                             <h2>Tổng:<span name="tongtien">  <?php echo number_format(Tong($cart)) ?>  </span></h2>
                                                
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                </form>
          
            </div> 
        </div>
            
            
          

    <?php

            // require_once("config/config.php");
            if (isset($_POST["DH"])) {
                //lấy thông tin từ các form bằng phương thức POST
                
               
                $name = $_POST["name"];
                $email = $_POST["email"];
                $sdt = $_POST["sdt"];
                $dc = $_POST["dc"];
            
                //Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
                if ( $name == "" || $email == ""|| $sdt == ""|| $dc == "") {
                        // echo "bạn vui lòng nhập đầy đủ thông tin";
                    echo "<script>alert('Bạn vui lòng nhập đầy đủ thông tin');</script>";
                        
                }else{
                        //thực hiện việc lưu trữ dữ liệu vào db
                            $sql = "INSERT INTO chitietdh(
                                TenUS,
                                emailUS,
                                SĐT,
                                diachiUS
                                
                                ) VALUES (
                                '$name',
                                '$email',
                                '$sdt',
                                '$dc'
                                
                                )";
                            // thực thi câu $sql với biến conn lấy từ file connection.php
                            mysqli_query($conn,$sql);
                            // echo "chúc mừng bạn đã đăng ký thành công";
                            echo '<script>alert("Chúc mừng bạn đã tạo đơn hàng thành công");window.location="index.php";</script>';
                        } 
                    if($sql) {
                        ini_set( 'display_errors', 1 );
                    
                    error_reporting( E_ALL );
                    $from = "anhnguyenphuocngoc@gmail.com";
                    $to=mysqli_query($conn,"select emailUS from chitietdh order by MaDH DESC LIMIT 1 ");
                    $subject = "AD COSMECTIC ";
                    $message = "Chúc mừng bạn đã tạo đơn thành công.Hãy theo dõi đơn hàng nhé";
                    $headers = "From:" . $from;
                    mail($email,$subject,$message, $headers);
                    echo "da gui mail cho ban" ;    
                    }                       
                        
                  }
                   session_destroy();

    ?>
            
           
        
 <!-- Login End -->
<?php

include 'inc/footer.php'
?>
        
    