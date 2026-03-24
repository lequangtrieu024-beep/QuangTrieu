<h3>Lịch sử đơn hàng </h3>

<?php
   $id_khachhang = $_SESSION['id_khachhang'];  
   $sql_lietke_dh = "SELECT * FROM tbl_cart,tbl_dangky WHERE tbl_cart.id_khachhang=tbl_dangky.id_dangky AND tbl_cart.id_khachhang='$id_khachhang' ORDER BY tbl_cart.id_cart ASC";
   $query_lietke_dh =  mysqli_query($mysqli, $sql_lietke_dh);
?>
<?php

if (isset($_GET['update_tinhtrang']) && $_GET['update_tinhtrang'] != '') {

    $update_tinhtrang = $_GET['update_tinhtrang'];

    $sql_update_tinhtrangdonhang = mysqli_query(
        $mysqli,
        "UPDATE tbl_cart SET cart_status=3 WHERE code_cart='$update_tinhtrang'"
    );

    
}
?>

<table border = "1px" width = "100%" style = "border-collapse: collapse;text-align:center">
  <tr>
     <th>ID </th>
    <th>Mã đơn hàng </th>
    <th>Tên khách hàng </th>
    <th>Địa chỉ  </th>
    <th>Email </th>
    <th>Số điện thoại</th>
    <th>Tình trạng</th>
    <th>Ngày đặt</th>
    <th>Quản Lý  </th>
    <th>Hình thức thanh toán</th>
  </tr>

         <?php
                  $i = 0;
                  while ($row = mysqli_fetch_array($query_lietke_dh))
                    {    
                        $i++; 
         ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['diachi'] ?></td>
    <td><?php echo $row['email'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>
       <td>
        <?php
              if($row['cart_status']==1){
                echo '<span style = "color:blue"> Đơn hàng mới</span>' ;
              }else if($row['cart_status']==2){echo '<span style="color:green"><a onclick="return confirm(\'Xác nhận đã nhận\')" href="'.$_SERVER['REQUEST_URI'].'&update_tinhtrang='.$row['code_cart'].'">Đã nhận hàng</a> </span>';
                 }else{
                echo '<span style = "color:dark"> Đã nhận </span>' ;
              }
             
        ?>
    </td>
    <td><?php echo $row['cart_date'] ?></td>
    <td>
        <a href="index.php?quanly=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a> 
    </td>
    <td><?php echo $row['cart_payment'] ?></td>
  </tr>

  <?php
                    }
   ?>                 
</table>