
<p> Giỏ Hàng :
  <?php
   if(isset($_SESSION['dangky']))
    {
       echo $_SESSION['dangky'];
        echo ' : ';
       echo $_SESSION['id_khachhang']; 
    }
?>
 </p>
<?php
   if(isset($_SESSION['cart']))
    {
       
    }
?>


<div class="container">
    <div class="arrow-steps">
      <div class="step current"> <span><a href="index.php?quanly=giohang">Giỏ hàng</a></span> </div>
      <div class="step"><span><a href="index.php?quanly=vanchuyen">Vận chuyển</a></span> </div>
      <div class="step"><span><a href="index.php?quanly=thanhtoan1">Thanh toán</a></span></div>
      
    </div>
</div>
<br>
<table style width = "100% ; border-collapse: collapse ;" border = "1">
  <tr>
    <th>Id</th>
    <th>Mã sản phẩm </th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh </th>
    <th>Số lượng </th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền </th>
    <th>Xóa </th>

  </tr>
  <?php
  if(isset($_SESSION['cart'])){
    $i = 0; 
    $tongtien = 0;
        foreach($_SESSION['cart'] as $cart_item){
             $thanhtien = $cart_item['soluong']*$cart_item['giasp'];
             $tongtien = $tongtien+$thanhtien;
            $i++;
  ?>
  <tr align = "center">
   <td><?php echo $i; ?></td>
   <td><?php echo $cart_item['masp']; ?></td>
   <td><?php echo $cart_item['tensanpham']; ?></td>
   <td><img src ="admincp/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>" width = "150px"></td>
   <td>
  <div class="qty">
    <a class="qty-btn" href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>">−</a>

    <span class="qty-number"><?php echo $cart_item['soluong']; ?></span>

    <a class="qty-btn" href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>">+</a>
  </div>
</td>


   <td><?php echo number_format ($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
   <td><?php echo number_format ($thanhtien,0,',','.').'vnđ'  ?></td>
   <td><a href="pages/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>">Xóa</a></td>
  </tr>
  <?php
        }
?>
<tr>
           <td colspan="8">
            <p style = "float : left;">Tổng Tiền : <?php echo number_format ($tongtien,0,',','.').'vnđ' ?></p>
            <p style = "float : right;"><a href="pages/main/themgiohang.php?xoatatca=1">Xóa Tất Cả</a></p> 
            <div style="clear:both;"></div>
            <?php
                   if(isset($_SESSION['dangky'])){
            ?>
                    <p align="center"><a href="index.php?quanly=vanchuyen">Hình thức vận chuyển</a></p> 
            <?php
                   }else{
             ?>
             <p align="center"><a href="index.php?quanly=dangky">Đăng Ký Đặt Hàng</a></p>
             <?php          
                   }
            ?>       
                
                

            </td>
    </tr> 
<?php

    }else{     
  ?>
    <tr align = "center">
           <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
    </tr> 
   <?php
  }
  ?>
</table>