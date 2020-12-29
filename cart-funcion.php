<?php 
    function Tong($cart)
    {
        $tongtien =0;
        foreach ($cart as $key => $value) {
            $tongtien += $value['quantity'] * $value['gia'];
        }
        return $tongtien;
    }

    function tongitem($cart){
        $tongitem = 0;
        foreach ($cart as $key => $value) {
            $tongitem += $value['quantity'];
        }
        return $tongitem;
    }
?>