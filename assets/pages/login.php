
    <div class="login">
        <div class="col-sm-12 col-md-4 bg-white border rounded p-4 shadow-sm">
            <form method="post" action="assets/php/actions.php?login">
                <div class="d-flex justify-content-center">

                    <img class="mb-4" src="assets/images/handbook.png" alt="" height="45">
                </div>
                <h1 class="h5 mb-3 fw-normal">Vui lòng đăng nhập</h1>
                    <!-- nhập usernaem hay email -->
                <div class="form-floating">
                    <input type="text" name="username_email" value="<?=showFormData('username_email')?>" class="form-control rounded-0" placeholder="Username/email">
                    <label for="floatingInput">Username/email</label>
                </div>
                <?=showError('username_email')?>
                <div class="form-floating mt-1">
                    <input type="password" name="password" class="form-control rounded-0" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Mật khẩu</label>
                </div>
                <?=showError('password')?>
                <?=showError('checkuser')?>


                <div class="mt-3 d-flex justify-content-between align-items-center">
                    <button class="btn btn-primary" type="submit">Đăng nhập</button>
                    <a href="?signup" class="text-decoration-none">Tạo tài khoản mới</a>


                </div>
                <a href="?forgotpassword&newfp" class="text-decoration-none">Quên mật khẩu?</a>
            </form>
        </div>
    </div>

