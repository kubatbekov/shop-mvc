<?php
        // FRONT CONTROLLER
// Стартуем сессию
session_start();
//session_destroy();
//  Общие настройки
ini_set("display_errors",1);
error_reporting(E_ALL);

//  Подключение файловой системы

define("ROOT",dirname(__FILE__));
require_once (ROOT."/functions.php");
require_once(ROOT.'/components/Autoload.php');

//  Вызов Router
$router=new Router();
$router->run();


?>
