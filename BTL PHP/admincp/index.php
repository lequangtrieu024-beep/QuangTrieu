<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel ="stylesheet" href ="css/styleadmincp.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <title>Admincp</title>
</head>

<?php
session_start();
if(!isset($_SESSION['dangnhap'])){
    header('Location:login.php');
}
?>

<body>


<?php include("config/config.php"); ?>

<div class="wrapper">

    <!-- SIDEBAR -->
    <?php include("modules/menu.php"); ?>

    <!-- CONTENT -->
    <div class="main-content">

        <!-- HEADER -->
        <?php include("modules/header.php"); ?>

        <!-- MAIN -->
        <?php include("modules/main.php"); ?>

    </div>

</div>

<!-- FOOTER -->
<?php include("modules/footer.php"); ?>



<!-- JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

<script>
CKEDITOR.config.versionCheck = false;
CKEDITOR.replace('tomtat');
CKEDITOR.replace('noidung');
CKEDITOR.replace('thongtinlienhe');
</script>

<script>
$(document).ready(function(){

    var char = new Morris.Area({
        element: 'chart',
        parseTime: false,
        xkey: 'date',
        ykeys: ['order','sales','quantity'],
        labels: ['Đơn hàng','Doanh thu','Số lượng bán ra']
    });

    thongke();

    function thongke() {
        var text = "365 ngày qua";
        
        $.ajax({
            url: "modules/thongke.php",
            method: "POST",
            dataType: "JSON",
            success: function(data) {
                char.setData(data);
                $("#text-date").text(text);
            }
        });
    }

});
</script>

</body>
</html>