<?php

?>

<!-- <div class="modal success-modal fade " id="exampleModal" aria-labelledby="exampleModalLabel" aria-hidden="true"
    tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content ">
            <div class="modal-header bg-success">
                <h5 class="modal-title">Xóa sản phẩm thành công</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Chúc mừng bạn đã xóa sản phẩm thành công</p>
            </div>
        </div>
    </div>

</div> -->
<!-- Button trigger modal -->
<!-- <button type="button" class="launch-modal-btn btn btn-primary d-none" data-toggle="modal" data-target="#exampleModal">
    Launch demo modal
</button> -->

<div class="container p-4">
    <h3 class="title">Danh mục sản phẩm</h3>
    <form method="post" action="./index.php?act=addcate">

        <div class="form-group">
            <label for="exampleInputEmail1">Thêm danh mục</label>
            <input type="text" name="catename" class="form-control" id="exampleInputEmail1"
                aria-describedby="emailHelp">
            <label for="exampleInputEmail2">Tiêu đề danh mục</label>
            <input type="text" name="catetitle" class="form-control" id="exampleInputEmail2"
                aria-describedby="emailHelp">
            <!-- <label for="exampleInputEmail3">Vị trí trên Home</label>
            <input type="text" name="catename" class="form-control" id="exampleInputEmail3"
                aria-describedby="emailHelp"> -->
            <small id="emailHelp" class="form-text text-muted"><?php ?></small>
        </div>

        <input type="submit" name="addcatebtn" value="Thêm danh mục" class="btn btn-primary" />
    </form>
    <h3 class="title mt-5">Bảng danh mục sản phẩm</h3>
    <table class="table table-hover">

        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Tên danh mục</th>
                <th scope="col">Sửa</th>
                <th scope="col">Xóa</th>
            </tr>
        </thead>
        <tbody>
            <?php

$cate_list = get_all_cates();
foreach ($cate_list as $cate_item) {
    # code...
    echo '
                <tr>
                    <th scope="row">' . $cate_item['id'] . '</th>
                    <td>' . $cate_item['tendanhmuc'] . '</td>
                    <td><a class="bg-primary text-white p-2" href="index.php?act=editcate&id=' . $cate_item['id'] . '">Sửa</a></td>
                    <td><a class="bg-danger text-white p-2" href="index.php?act=deletecate&id=' . $cate_item['id'] . '">Xóa</a></td>
                </tr>
                ';
}

?>

        </tbody>
    </table>
</div>