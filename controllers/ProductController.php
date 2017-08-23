<?php

class ProductController{

         /**
          * Action для страницы просмотра одного товара
          * @param  integer $product_id <p>id товара</p>
          */
    public function actionView($product_id){

        $categories=Category::getCategoriesList();

        $product=Product::getProductById($product_id);
        require_once (ROOT.'/views/product/view.php');
        return true;
    }
}