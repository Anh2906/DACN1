<?php include 'inc/header.php' ;
include 'config/config.php';

?>
<style>
    div.product-image img{
        width: 70px;height: 300px;
    }
    div.product-title{
        width: 470px;height: 140px;
    }
    
</style>
<?php 
	
        // Nếu người dùng submit form thì thực hiện
        if (isset($_GET['khoa'])) 
        {
            // Gán hàm addslashes để chống sql injection
            $khoa = addslashes(isset($_GET['khoa'])?$_GET['khoa']:'');
 
            // Nếu $search rỗng thì báo lỗi, tức là người dùng chưa nhập liệu mà đã nhấn submit.
	            if (empty($khoa)) {
	                echo "Yeu cau nhap du lieu vao o trong";
	            } 
			    else
			    {
	                // Dùng câu lênh like trong sql và sứ dụng toán tử % của php để tìm kiếm dữ liệu chính xác hơn.
	                $query = "select * from sanpham where masp like '%$khoa%' or tensp like '%$khoa%'";	 
	                // Thực thi câu truy vấn
	                $sql = mysqli_query($conn,$query);
	                // Đếm số đong trả về trong sql.
	                $num = mysqli_num_rows($sql);
	 
	                // Nếu có kết quả thì hiển thị, ngược lại thì thông báo không tìm thấy kết quả// Dùng $num để đếm số dòng trả về.
	                if ($num > 0 && $khoa != "") 
	                {?>
	                    <div class="col-md-4"> 
	                   		<?php echo "<h5>$num kết quả trả về với từ khoá <b>$khoa</b></h5>";  ?> 
	              		 </div>
	 				
		               <div class="product-view">
	            			<div class="container-fluid">
	                             <div class="row">
				                   <?php
				                     while($row = mysqli_fetch_array($sql)){
				                    	?>
											<div class="col-md-4">
							                                <div class="product-item">
							                                    <div class="product-title" >
							                                        <a href="#"><?php echo $row["tensp"]?></a>
							                                    </div>
							                                    <div class="product-image">
							                                        <a href="product-detail.html">
							                                            <img src="<?php echo $row["img"]?>" >
							                                        </a>
							                                            <div class="product-action">
							                                                <a href="Cart.php?id=<?php echo $row["masp"]?>"><i class="fa fa-cart-plus"></i></a>  <!--gio hang -->
							                                               
							                                                <a href="chitietsanpham.php?id=<?php echo $row[0]?>"><i class="fa fa-search"></i></a><!-- nut tim kiem-->
							                                            </div>
							                                    </div>
							                                    <div class="product-price">
							                                        <h3><?php echo number_format($row["gia"])?></h3>
							                                         <a class="btn" href="Cart.php?id=<?php echo $row[0]?>"><i class="fa fa-shopping-cart">
							                                        </i>Mua hàng</a>
							                                    </div>
							                               	 </div>
							                </div>
							            <?php 
									        }
									     ?>
		           				</div>
		        			</div>
		        		</div>

					<?php
					}
					else 
						echo  " <h3>	khong tim thay $khoa</h3>";

}
}
?> 
<?php include 'inc/footer.php' ?>