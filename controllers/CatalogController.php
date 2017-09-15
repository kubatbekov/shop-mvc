<?php


class CatalogController {

            /**
             * Action для страницы "Каталог товаров"
             */
    public function actionIndex(){

        $latestProduct=Product::getLatestProducts(6);
        require_once (ROOT.'/views/catalog/index.php');
        return true;
    }

    /**
     * Action для страницы "Категория товаров"
     */
    public function actionCategory($categoryId,$subcategoryId, $page = 1)
    {
        // Список товаров в категории
        $categoryProducts = Product::getProductsListByCategory($categoryId,$subcategoryId, $page);

        // Общее количетсво товаров (необходимо для постраничной навигации)
        $total = Product::getTotalProductsInCategory($categoryId);
        // Создаем объект Pagination - постраничная навигация
        $pagination = new Pagination($total, $page, Product::SHOW_BY_DEFAULT, 'page-');

        // Подключаем вид
        require_once(ROOT . '/views/catalog/category.php');
        return true;
    }



}