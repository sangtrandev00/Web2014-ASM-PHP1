<!-- Login page section -->
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
                <h3 class="login-page__title">Account Signup</h3>
                <p class="login-page__notify-info">Become a member and enjoy exclusive promotions.</p>
                <form class="login-page__form" action="./index.php?act=signuppage" method="post">
                    <div class="form-group">
                        <label for="" class="form-label">Full Name</label>
                        <input type="Text" name="fullname" id="" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Home Address</label>
                        <input type="Text" name="homeaddress" id="" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Phone Number</label>
                        <input type="Text" name="phonenumber" id="" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Email Address</label>
                        <input type="email" name="emailaddress" id="" class="form-control" placeholder="" required
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Username</label>
                        <input type="Text" name="username" id="" class="form-control" placeholder="" required>
                    </div>

                    <div class="form-group">
                        <label for="" class="form-label">Password</label>
                        <input type="password" name="password" id="" class="form-control" placeholder="" required>
                    </div>
                    <input class="login-page__btn" name="signupbtn" type="submit" value="Continue">
                </form>

                <div class="login-page__forgot-pass">
                    <a href="./index.php?act=forgotpasspage" class="login-page__forgot-pass-link">Forgot Password ?</a>
                </div>
            </div>
        </div>
    </div>
</div>