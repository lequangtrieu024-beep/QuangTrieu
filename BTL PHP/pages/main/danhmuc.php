
<?php
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

$sql = "SELECT tbl_sanpham.*, tbl_danhmuc.tendanhmuc
        FROM tbl_sanpham 
        JOIN tbl_danhmuc 
        ON tbl_sanpham.id_danhmuc = tbl_danhmuc.id_danhmuc
        WHERE tbl_sanpham.id_danhmuc = $id
        ORDER BY tbl_sanpham.id_sanpham DESC";

$query = mysqli_query($mysqli, $sql);
?>

<?php if (mysqli_num_rows($query) > 0) { 
    $row_title = mysqli_fetch_array($query);
?>
    <h3>Danh mục sản phẩm: <?php echo $row_title['tendanhmuc']; ?></h3>

    <ul class="product_list">
        <?php
        // hiển thị sản phẩm đầu tiên
        ?>
        <li>
            <a href="index.php?quanly=sanpham&id=<?php echo $row_title['id_sanpham'] ?>">
                <img src="admincp/modules/quanlysp/uploads/<?php echo $row_title['hinhanh']; ?>">
                <p>Tên sản phẩm : <?php echo $row_title['tensanpham']; ?></p>
                <p>Giá : <?php echo number_format($row_title['giasp'],0,',','.').' vnđ'; ?></p>
            </a>
        </li>

        <?php
        // hiển thị các sản phẩm còn lại
        while ($row = mysqli_fetch_array($query)) {
        ?>
        <li>
            <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                <img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh']; ?>">
                <p>Tên sản phẩm : <?php echo $row['tensanpham']; ?></p>
                <p>Giá : <?php echo number_format($row['giasp']).' vnđ'; ?></p>
            </a>
        </li>
        <?php } ?>
    </ul>

<?php } else { ?>
    <h3>Danh mục sản phẩm</h3>
    <p>Danh mục này chưa có sản phẩm.</p>
<?php } ?>
