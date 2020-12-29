 <?php
    include 'inc/header.php';
    include 'config/config.php';
 ?>


        
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
           <!--          <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active">Login & Register</li> -->
                    <li class ="breadcrumb-item"><h4> Register & Login</h4></li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Login Start -->
       
        <div class="login">
            
            <div class="container-fluid">
                <form action="login.php" method="post"  >
                <div class="row">
                    <div class="col-lg-6">    
                        <div class="register-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Họ Tên:</label>
                                    <input class="form-control" type="text" id="name" name="name" >
                                </div>
                                <div class="col-md-6">
                                    <label>Tài Khoản:</label>
                                    <input class="form-control" type="text" id="username" name="username" >
                                </div>
                                <div class="col-md-6">
                                    <label>Email:</label>

                                    <input class="form-control" type="text" id="email" name="email" > <!--placeholder="" -->
                                </div>
                                <div class="col-md-6">
                                    <label>Mật Khẩu:</label>
                                    <input class="form-control" type="password" id="pass" name="pass" >
                                </div>
                                <div class="col-md-6">
                                    <label>Số điện thoại:</label>
                                    <input class="form-control" type="text" id="sdt" name="sdt" >
                                </div>
                                <div class="col-md-6">
                                    <label>Địa chỉ:</label>
                                    <input class="form-control" type="text" id="dc" name="dc" >
                                </div>
                                
                                <div class="col-md-6">
                                    <button class="btn" name="btn_submit_Dangky">Đăng Ký</button>
                                </div>
                            </div>
                        </div>
                    </div>
              
                  <!--   Đăng nhập  -->
                    <div class="col-lg-6">
                        <div class="login-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Tài Khoản<label>
                                    <input class="form-control" type="text" placeholder="" id="taikhoan" name="taikhoan">
                                </div>
                                <div class="col-md-6">
                                    <label>Password</label>
                                    <input class="form-control" type="Password" placeholder="" id="matkhau" name="matkhau">
                                </div>
                                <div class="col-md-12">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="newaccount">
                                        <label class="custom-control-label" for="newaccount">Keep me signed in</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn" name="btn_submit_Dangnhap" >Đăng Nhập</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

                </div>
            </div>
          
        <?php

            // require_once("config/config.php");
            if (isset($_POST["btn_submit_Dangky"])) {
                //lấy thông tin từ các form bằng phương thức POST
                $username = $_POST["username"];
                $password = $_POST["pass"];
               
                $name = $_POST["name"];
                $email = $_POST["email"];
                $sdt = $_POST["sdt"];
                $dc = $_POST["dc"];
                //Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
                  if ($username == "" || $password == "" || $name == "" || $email == ""|| $sdt == ""|| $dc == "") {
                        // echo "bạn vui lòng nhập đầy đủ thông tin";
                    echo "<script>alert('Bạn vui lòng nhập đầy đủ thông tin');</script>";
                        
                }else{
                        // Kiểm tra tài khoản đã tồn tại chưa
                        $sql="select * from Khachhang where TkUS ='$username'";
                        $kt=mysqli_query($conn, $sql);

                        if(mysqli_num_rows($kt)  > 0){
                            echo "Tài khoản đã tồn tại";
                        }else{
                            //thực hiện việc lưu trữ dữ liệu vào db
                            $sql = "INSERT INTO Khachhang(
                                TenUS,
                                TkUS,
                                MkUS,
                                emailUS,
                                SDT,
                                diachiUS
                                ) VALUES (
                                '$name',
                                '$username',
                                '$password',
                                '$email',
                                '$sdt',
                                '$dc'
                                )";
                            // thực thi câu $sql với biến conn lấy từ file connection.php
                            mysqli_query($conn,$sql);
                            // echo "chúc mừng bạn đã đăng ký thành công";
                            echo "<script>alert('Chúc mừng bạn đã đăng ký thành công');</script>";
                        }                              
                        
                  }
            }
            if (isset($_POST["btn_submit_Dangnhap"])) {
                // lấy thông tin người dùng
                $taikhoan = $_POST["taikhoan"];
                $matkhau = $_POST["matkhau"];
                //làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt 
                //mà người dùng cố tình thêm vào để tấn công theo phương thức sql injection
                // $taikhoan = strip_tags($taikhoan);
                // $taikhoan = addslashes($taikhoan);
                // $matkhau = strip_tags($matkhau);
                // $matkhau = addslashes($matkhau);

                if ($taikhoan == "" || $matkhau =="") {
                    // echo "Tài khoản hoặc mật khẩu không được để trống!";
                    echo "<script>alert('Vui lòng nhập mật khẩu và tài khoản');</script>";
                }
                else{

                    $sql = "select * from Khachhang where TkUS ='$taikhoan' and MkUS = '$matkhau' ";
                    $query = mysqli_query($conn,$sql);
                    $num_rows = mysqli_num_rows($query);
                    if ($num_rows==0) {
                        // echo "tên đăng nhập hoặc mật khẩu không đúng !";
                        echo "<script>alert('Tên đăng nhập hoặc mật khẩu không đúng!');</script>";
                    }
                    else
                    {
                    
                        //tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
                        $_SESSION['taikhoan'] = $taikhoan;
                     

                        echo '<script>alert("Đăng nhập thành công");window.location="index.php";</script>';
                        
                        // echo "Đăng nhập thành công";
                       
                        // Thực thi hành động sau khi lưu thông tin vào session
                        // ở đây mình tiến hành chuyển hướng trang web tới một trang gọi là index.php
                    }
                }
             
            }

        ?>
        </div>
        <!-- Login End -->
<?php
include 'inc/footer.php'
?>
        
    