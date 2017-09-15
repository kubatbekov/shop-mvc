<?php

class Router
{
    private $routes;

        // Подключаем routes.php
    public function __construct(){
        $routesPath=ROOT.'/config/routes.php';
        $this->routes=include ($routesPath);// присваиваем роуты свойтву $routes
    }
        // Получаем строку запроса
    private function getURI(){
        if(!empty($_SERVER['REQUEST_URI'])){
            return trim($_SERVER['REQUEST_URI'],'/');
        }
    }
    // Error method
    public static function ErrorPage404(){
//        header('HTTP/1.1 404 Not Found');
//        header("Status: 404 Not Found");
        header('Location:/404');
    }

    public function run(){

                // Получить строку запроса
        $uri=$this->getURI();//вызываем метод который получает строку запроса

        // Проверить наличие такого запроса в routes.php
        foreach ($this->routes as $uriPattern=>$path) {
            // Сравниваем $uriPattern и $uri (т.е строку запроса с роутами)
            if (preg_match("~$uriPattern~",$uri)){

                // Получаем внутренний путь из внешнего согласно по правилу
                $internalRoute= preg_replace("~$uriPattern~",$path,$uri);

                // Если есть совпадение определить имя Controller, action и параметры
                $segments=explode('/',$internalRoute); // Превращаем (строку запроса) в массив через разделителя

               

                        // Определяем имя контроллера и action
                $controllerName=array_shift($segments).'Controller';  // Имя контроллера
                $controllerName=ucfirst($controllerName);

                $actionName='action'.ucfirst(array_shift($segments));  // Имя action
                // Массив с параметрами id
                $parametres=$segments;

                // Подключить  файл класса контроллера
                $controllerFile=ROOT.'/controllers/'.$controllerName.'.php';
                if(file_exists($controllerFile)){
                    include_once ($controllerFile);
                }




                // Создать объект и вызвать метод (т.е action)
                $controllerObject=new $controllerName;

                // Передаем в action параметры запроса (т.е категорию и id запися)
//                $result=$controllerObject->$actionName($parametres);

                $result=call_user_func_array(array($controllerObject,$actionName),$parametres);

                if($result !=null){
                    break;
                }

            }

        }

    }



}