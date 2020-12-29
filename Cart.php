<?php 
    include 'config/config.php';
?>
<?php  
    session_start();
        
    if (isset($_GET['id']))
    {
         $id = $_GET['id'];
    }

    $action = (isset($_GET['action']) ? $_GET['action'] :'add'); // nếu tồn tại action thì gán nó = add 

    $quantity = (isset($_GET['quantity'])) ? $_GET['quantity'] : 1;

    if ($quantity <=0) {
        $quantity = 1;
    }

    // var_dump($_GET);
    // die();

    $query = mysqli_query($conn,"select * from sanpham where masp = $id");
    $product = mysqli_fetch_assoc($query);



    $item = [
    'id' => $product['masp'],
    'name'=> $product['tensp'],
    'hinh'=>$product['img'],
    'gia' => $product['gia'],
    'quantity' => $quantity,
    // 'gia' => ($product['giaKM'] > 0) ? $product['giaKM'] : $product['gia'], - nếu CSDL có cột giá Khuyến mãi thì mở thẻ
    ];

    if ($action == 'add') // nếu action == 'add'
    {
            if (isset($_SESSION['Cart'][$id]))
            {
               $_SESSION['Cart'][$id]['quantity'] += $quantity; // Nếu Sản phẩm có trong giỏ hàng thì khi thêm sp sluong tăng 1
            }
            else
            {
               $_SESSION['Cart'][$id] = $item;      // thêm mới
            }
    }

    if ($action == 'update')
    {
        $_SESSION['Cart'][$id]['quantity'] = $quantity;
    }

    if ($action == 'del')
    {
        unset($_SESSION['Cart'][$id]);
    }
    

   

    header('location: view-cart.php');
    // echo "<pre>";
    // print_r($_SESSION['Cart']);

?>
  
       
       
