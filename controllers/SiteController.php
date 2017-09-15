<?php

class SiteController {

    /**
     * Action для главной страницы
     */
    public function actionIndex(){

        //Список рекоммендуемых товаров
        $sliderProducts=Product::getRecommendedProducts();

        $latestProduct=Product::getLatestProducts(10);
        require_once (ROOT.'/views/site/index.php');
        return true;
    }


    /**
     * Action для страницы "Контакты"
     */
    public function actionContact()
    {

        // Переменные для формы
        $userEmail = false;
        $userText = false;
        $result = false;

        // Обработка формы
        if (isset($_POST['submit'])) {
            // Если форма отправлена
            // Получаем данные из формы
            $userEmail = $_POST['userEmail'];
            $userText = $_POST['userText'];

            // Флаг ошибок
            $errors = false;

            // Валидация полей
            if (!User::checkEmail($userEmail)) {
                $errors[] = 'Неправильный email';
            }

            if ($errors == false) {
                // Если ошибок нет
                // Отправляем письмо администратору
                $adminEmail = 'php.start@mail.ru';
                $message = "Текст: {$userText}. От {$userEmail}";
                $subject = 'Тема письма';
                $result = mail($adminEmail, $subject, $message);
                $result = true;
            }
        }

        // Подключаем вид
        require_once(ROOT . '/views/site/contact.php');
        return true;
    }

    /**
     * Action для страницы "Поиска по сайту"
     */
    public function actionSearch(){
        // текст из формы
        $searchText=$_POST['searchText'];
        // Результат поиска
        $searchProducts=Product::getSearchProducts($searchText);

        require_once (ROOT.'/views/site/search.php');
        return true;
    }
    public function actionNotfound(){

        require_once (ROOT.'/views/site/404.php');
        return true;
    }
    public function actionPagination(){


        require_once (ROOT.'/views/site/pagination.php');
        return true;
    }

}