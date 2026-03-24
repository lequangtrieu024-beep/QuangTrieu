<?php
$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
$query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);
?>  
<?php
 if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
    session_unset();
    session_destroy();
}
?>

<div class="menu">
    <ul class="list_menu">
        <li><a href="index.php">Trang chủ</a></li>
        <li><a href="index.php?quanly=giohang">Giỏ hàng</a></li>
        <li><a href="index.php?quanly=tintuc">Tin tức</a></li>
        <li><a href="index.php?quanly=lienhe">Liên hệ</a></li>


<form action="index.php?quanly=timkiem" method="POST">
        <li>
              <input type="text" placeholder="Tìm kiếm sản phẩm...." name="tukhoa">
              <input type="submit" name="timkiem" value="Tìm Kiếm">
        </li>
</form>


        <?php
        if(isset($_SESSION['dangky'])){
            
       ?>
       <li><a href="index.php?dangxuat=1">Đăng Xuất</a></li>
       <li><a href="index.php?quanly=thaydoimatkhau">Đổi mật khẩu </a></li>
       <li><a href="index.php?quanly=lichsudonhang">Lịch sử đơn hàng </a></li>
       <?php
        }else{
        ?>
        <li><a href="index.php?quanly=dangky">Đăng Ký</a></li>
        <?php
        }
        ?>
        


    </ul>
</div>

<div class="clear"></div>
