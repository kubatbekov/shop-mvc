<?php


class NewsController {

        // Returns all news
    public function actionIndex(){
        $model=News::getNewsList();
        require_once ROOT.'/views/news/index.php';
        return true;
    }
        // Return single news
    public function actionView($id){
        $model=News::getNewsItemById($id);
        require_once ROOT.'/views/news/view.php';
        return true;
    }

//    public function actionView($category,$id,$test){
//        echo "<br>Category ".$category;
//        echo "<br> Id ".$id;
//        echo "<br>Просмотр одной записи";
//        return true;
//    }
}