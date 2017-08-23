<?php



class News{

        /**
         * Возвращает новость с указаннын id
         * @param  integer $id <p>id товара</p>
         * return объект с информацией о новости
         */
    public static function getNewsItemById($id){
        $db=Db::getConnection();
        $result=$db->query("SELECT * FROM news WHERE `id`=$id");
        $row=$result->fetch(PDO::FETCH_OBJ);
        return $row;
    }

        /**
         * Возвращает список товаров
         * @return object <p>Объект с новостями</p>
         */
    public static function getNewsList(){
        $db=Db::getConnection();
        $result=$db->query("SELECT * FROM news");
        $rows=$result->fetchAll(PDO::FETCH_OBJ);
        return $rows;
    }

}