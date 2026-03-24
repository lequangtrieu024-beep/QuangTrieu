<?php

include('admincp/config/config.php');

if(isset($_POST['dangky'])){

    $tenkhachhang = trim($_POST['hovaten']);
    $email = trim($_POST['email']);
    $dienthoai = trim($_POST['dienthoai']);
    $diachi = trim($_POST['diachi']);
    $matkhau = password_hash($_POST['matkhau'], PASSWORD_DEFAULT);

    // ❗ kiểm tra rỗng
    if(empty($tenkhachhang) || empty($email) || empty($matkhau)){
        echo "<p style='color:red'>Vui lòng nhập đầy đủ thông tin</p>";
    }

    // ❗ kiểm tra email hợp lệ
    elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        echo "<p style='color:red'>Email không hợp lệ</p>";
    }

    else{

        // ❗ kiểm tra email tồn tại
        $check = mysqli_query($mysqli,"SELECT * FROM tbl_dangky WHERE email='$email' LIMIT 1");

        if(mysqli_num_rows($check) > 0){
            echo "<p style='color:red'>Email đã tồn tại</p>";
        }else{

            // insert
            $sql = "INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,dienthoai) 
                    VALUES('$tenkhachhang','$email','$diachi','$matkhau','$dienthoai')";

            if(mysqli_query($mysqli,$sql)){
                $_SESSION['dangky'] = $tenkhachhang;
                $_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);

                header("Location:index.php?quanly=giohang");
                exit();
            }else{
                echo "<p style='color:red'>Đăng ký thất bại</p>";
            }
        }
    }
}
?>


<h3>Đăng ký thành viên</h3>

<div class="form-wrapper">
<form action="" method="POST">

    <div class="form-group">
        <input type="text" name="hovaten" placeholder="Họ và tên" class="form-control">
    </div>

    <div class="form-group">
        <input type="text" name="email" placeholder="Email" class="form-control">
    </div>

    <div class="form-group">
        <input type="text" name="dienthoai" placeholder="Điện thoại" class="form-control">
    </div>

    <div class="form-group">
        <input type="text" name="diachi" placeholder="Địa chỉ" class="form-control">
    </div>

    <div class="form-group">
        <input type="password" name="matkhau" placeholder="Mật khẩu" class="form-control">
    </div>

    <input type="submit" name="dangky" value="Đăng ký" class="btn-submit">

</form>

<p>
    Đã có tài khoản? 
    <a href="index.php?quanly=dangnhap">Đăng nhập</a>
</p>
</div>