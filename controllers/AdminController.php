<?php

class AdminController extends AdminBase
{

    /**
     * Action для стартовой страницы "Панель администратора"
     */
        public function actionIndex(){
            self::checkAdmin();
            require_once ROOT."/views/admin/index.php";
            return true;
        }
}