<?php include ROOT . '/views/layouts/header.php'; ?>

    <section>
                <div class="col-sm-4 col-sm-offset-2 padding-right">
                <?php if ($result): ?>
                    <h3  class="alert alert-success">Вы зарегистрированы!</h3>
                <?php else: ?>
                    <?php if (isset($errors) && is_array($errors)): ?>
                        <ul>
                            <?php foreach ($errors as $error): ?>
                                <li> - <?php echo $error; ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                        <div class="signup-form"><!--sign up form-->
                            <h2>Registration</h2>
                            <form action="#" method="post" id="register-form">
                                <input type="text" name="name" placeholder="Name" value="<?php echo $name; ?>"/>
                                <input type="email" name="email" placeholder="E-mail" value="<?php echo $email; ?>"/>
                                <input type="password" name="password" id="register-password" placeholder="Password" value="<?php echo $password; ?>"/>
                                <input type="password" name="passwordRepeat" placeholder="Password" value="<?php echo $passwordRepeat; ?>"/>
                                <input type="submit" name="submit" class="btn btn-primary" value="Registration" />
                            </form>
                        </div><!--/sign up form-->

                <?php endif; ?>

                    <br/>
                    <br/>
                </div>
    </section>

<?php include ROOT . '/views/layouts/footer.php'; ?>