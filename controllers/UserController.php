<?php

class UserController{

    /**
     * Action для страницы "Регистрация"
     */
    public function actionRegister(){
        // Переменные для формы
        $name=false;
        $email=false;
        $password=false;
        $passwordRepeat=false;
        $result = false;

        // Обработка формы
        if(isset($_POST['submit'])){
            // Если форма отправлена
            // Получаем данные из формы
            $name=htmlspecialchars($_POST['name']);
            $email=htmlspecialchars($_POST['email']);
            $password=htmlspecialchars($_POST['password']);

            // Флаг ошибок
            $errors = false;

            // Валидация полей
            if(!User::checkName($name)){
                $errors[]="Your username must consist of at least 5 characters";
            }

            if(!User::checkEmail($email)){
                $errors[]="Email invalid";
            }

            if(!User::checkPassword($password)){
                $errors[]="Your password must consist of at least 6 characters";
            }

            if(User::checkEmailExists($email)){

                $errors[]="This login is already taken! Select another login";
            }



            if($errors==false){
                // Если ошибок нет
                // Регистрируем пользователя
                $result=User::register($name,$email,$password);
            }


        }
        require_once (ROOT.'/views/user/register.php');
        return true;
    }

    /**
     * Action для страницы "Вход на сайт"
     */
    public function actionLogin()
    {
        // Переменные для формы
        $email = false;
        $password = false;

        // Обработка формы
        if (isset($_POST['submit'])) {
            // Если форма отправлена
            // Получаем данные из формы
            $email = htmlspecialchars($_POST['email']);
            $password = trim(htmlspecialchars($_POST['password']));

            // Флаг ошибок
            $errors = false;

            // Валидация полей
            if (!User::checkEmail($email)) {
                $errors[] = 'Неправильный email';
            }
            if (!User::checkPassword($password)) {
                $errors[] = 'Пароль не должен быть короче 6-ти символов';
            }

            // Проверяем существует ли пользователь
            $userId = User::checkUserData($email, $password);

            if ($userId == false) {
                // Если данные неправильные - показываем ошибку
                $errors[] = 'Неправильные данные для входа на сайт';
            } else {
                // Если данные правильные, запоминаем пользователя (сессия)
                User::auth($userId);

                // Перенаправляем пользователя в закрытую часть - кабинет
                header("Location: /cabinet");
            }
        }

        // Подключаем вид
        require_once(ROOT . '/views/user/login.php');
        return true;
    }

    /**
     * Action для страницы "Выхода из сайта"
     */
    public function actionLogout(){
        // Стартуем сессию
        session_start();

        // Удаляем информацию о пользователе из сессии
        unset($_SESSION["user"]);

        // Перенаправляем пользователя на главную страницу
        header("Location: /");
    }
}