<?php

class Db {
            // Подключаемся к БД через PDO
    public static function getConnection(){
        $paramsPath=ROOT.'/config/db_params.php';
        $params=include ($paramsPath);
        try{
            $db= new PDO("mysql:dbname={$params['dbname']};host={$params['host']}",$params['username'],$params['password']);
            $db->exec("set names utf8");
        }
        catch(PDOException $e){
            echo "Error connect";
            exit;
        }
        return $db;
    }
}