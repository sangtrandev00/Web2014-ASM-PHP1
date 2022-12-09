<?php
ob_start();

// if ((isset($_POST['loginbtn'])) && (($_POST['loginbtn']))) {
//     $username = $_POST['username'];
//     $password = $_POST['password'];
//     $role = checkuser($username, $password);
//     // echo "result: " . var_dump($role);
//     $_SESSION['role'] = $role;
//     if ($role == 0) {
//         header('location: index.php');
//     } else if ($role == 1) {
//         header('location: admin/index.php');
//     } else {
//         $text_error = "username hoặc password không tồn tại";
//         // header('location: login.php');
//     }
// }

?>

<!-- <script>
(function() {

    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();
</script> -->

<div class="login-page">
    <div class="login-page__wrap">
        <div class="login-page__left-section">
            <div class="login-page__left-img">
                <img src="./assets/images/login/output-onlinegiftools.gif" alt="" class="login-page__left-img-img">
            </div>
        </div>
        <div class="login-page__right-section">
            <div class="login-page__right-wrap">
                <div class="login-page__back-to-last-page"><i
                        class="previous-page-icon fa-solid fa-arrow-left-long"></i></div>
                <h3 class="login-page__title">Account Login</h3>
                <p class="login-page__notify-info">If you are already a member you can login with your email
                    address
                    and password.</p>
                <form class="login-page__form needs-validation" novalidate action="./index.php?act=loginpage"
                    method="post">
                    <div class="form-group">
                        <label for="validationCustom01" class="form-label">Email Address/Username</label>
                        <input type="Text" name="username" class="form-control  " id="validationCustom01" placeholder=""
                            required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                        <div class="invalid-feedback">
                            Please provide a valid city.
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="validationCustom02" class="form-label">Password</label>
                        <input type="password" name="password" id="validationCustom02" class="form-control  "
                            placeholder="" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                        <div class="invalid-feedback">
                            Please provide a valid city.
                        </div>
                    </div>
                    <div class="form-group">
                        <p class="login-page__form-remember"> <input class="login-page__remember-checkbox"
                                name="rememberinput" type="checkbox" name="" id="">
                            Remember Me</p>
                    </div>
                    <input class="login-page__btn" type="submit" name="loginbtn" value="Login Account">
                    <?php
if (isset($text_error) && ($text_error != "")) {
    echo '<p class="error-message"  style="font-size: 1.4rem; color: red">' . $text_error . '</p>';
}
?>
                </form>
                <div class="login-page__signup">
                    Don't you have an account ? <a href="./index.php?act=signuppage"
                        class="login-page__signup-link">Signup here</a>
                </div>
                <div class="login-page__forgot-pass">
                    <a href="./index.php?act=forgotpasspage" class="login-page__forgot-pass-link">Forgot Password ?</a>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- <script src="../assets/js/bootstrap.bundle.min.js">

</script> -->

<script>

</script>