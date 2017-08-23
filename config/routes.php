<?php
        // Routs
return array(
    // Товар:
    'product/([0-9]+)' => 'product/view/$1', // actionView в ProductController
    // Каталог:
    'catalog' => 'catalog/index', // actionIndex в CatalogController
    // Категория товаров:
    'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2', // actionCategory в CatalogController
    'category/([0-9]+)' => 'catalog/category/$1', // actionCategory в CatalogController
    // User
    'user/register'=>'user/register',
    'user/login'=>'user/login',
    'user/logout'=>'user/logout',

    // Кабинет пользователя
    'cabinet/edit'=>'cabinet/edit',
    'cabinet'=>'cabinet/index',

    // Добавление товара в корзину
    'cart/ajax/([0-9]+)'=>'cart/ajax/$1',
    'cart/addAjax/([0-9]+)'=>'cart/addAjax/$1',
    'cart/delete'=>'cart/delete',
    'cart/checkout'=>'cart/checkout',
    'cart'=>'cart/index',

    // Управление товарами:
    'admin/product/create' => 'adminProduct/create',
    'admin/product/update/([0-9]+)' => 'adminProduct/update/$1',
    'admin/product/delete/([0-9]+)' => 'adminProduct/delete/$1',
    'admin/product' => 'adminProduct/index',

    // Управление категориями:
    'admin/category/create' => 'adminCategory/create',
    'admin/category/update/([0-9]+)' => 'adminCategory/update/$1',
    'admin/category/delete/([0-9]+)' => 'adminCategory/delete/$1',
    'admin/category' => 'adminCategory/index',

    // Управление заказами:
    'admin/order/update/([0-9]+)' => 'adminOrder/update/$1',
    'admin/order/delete/([0-9]+)' => 'adminOrder/delete/$1',
    'admin/order/view/([0-9]+)' => 'adminOrder/view/$1',
    'admin/order' => 'adminOrder/index',

    // Админпанель:
    'admin' => 'admin/index',

    'contact'=>'site/contact',
    'search'=>'site/search',
    'myframework'=>'site/index',// Main page
//    'myframework'=>'site/pagination',// Main page

);
