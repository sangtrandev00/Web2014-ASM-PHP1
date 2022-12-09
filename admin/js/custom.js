

$(document).ready(function(){
    
    // const deleteSuccessElement = $(".delete-cate-success");
    // console.log(deleteSuccessElement[0]);
    // console.log(deleteSuccessElement.hasClass("d-none"))
    // if(deleteSuccessElement.hasClass("d-none")) {
    //   $(".launch-modal-btn").click();
    //   setTimeout(function() {
    //     $(".modal-backdrop").hide();
    //     $(".success-modal").hide();
    //     deleteSuccessElement[0].remove();
    //   },3000)
    // }
    
    // Show modal Admin
    showModal(".add-cate-success", "Thêm danh mục mới thành công");
    showModal(".update-cate-success", "Cập nhật danh mục thành công");
    showModal(".delete-cate-success", "Xóa danh mục thành công");

    showModal(".add-product-success", "Thêm sản phẩm mới thành công");
    showModal(".edit-product-success", "Cập nhật sản phẩm thành công");
    showModal(".delete-product-success", "Xóa sản phẩm thành công");
    
    showModal(".add-admin-success", "Thêm admin thành công");
    showModal(".delete-admin-success", "Xóa admin thành công");
    showModal(".update-admin-success", "Cập nhật admin thành công");
    showModal(".update-pass-admin-fail--wrong-pass", "Cập nhật mật khẩu admin thất bại, sai mật khẩu","error");
    showModal(".update-pass-admin-fail--wrong-repass", "Cập nhật mật khẩu admin thất bại, nhập lại mật khẩu không trùng khớp","error");
    showModal(".update-pass-admin-success", "Cập nhật mật khẩu Admin thành công");

    showModal(".add-user-success", "Thêm người dùng mới thành công");
    showModal(".update-user-success", "Cập nhật người dùng thành công");
    showModal(".delete-user-success", "Xóa người dùng thành công");
    showModal(".update-pass-user-success", "Cập nhật mật khẩu người dùng thành công");
    showModal(".update-pass-user-fail--wrong-pass", "Cập nhật mật khẩu user thất bại, sai mật khẩu","error");
    showModal(".update-pass-user-fail--wrong-repass", "Cập nhật mật khẩu user thất bại, nhập lại mật khẩu không trùng khớp","error");
    

  });


  function showModal(modalSuccessclassName, text, status = "success") {
    const modalSuccessElement = $(modalSuccessclassName);
    if(modalSuccessElement.hasClass("d-none")) {
      $(".launch-modal-btn").click();

      $(".modal-title").text(text);
      

      if(status == "success") {
        $(".modal-header").addClass("bg-success");
        $(".modal-body").text("Chúc mừng bạn đã "+ text);
      }else if(status == "error") {
        $(".modal-header").addClass("bg-danger");
        $(".modal-body").text(text+", Mời nhập lại!");
      }

      setTimeout(function() {
        $(".modal-backdrop").hide();
        $(".success-modal").hide();
        modalSuccessElement[0].remove();
      },3000)
    }
  }