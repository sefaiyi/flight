<?php
require 'vendor/autoload.php';

Flight::route('/', function(){
    echo 'Hello World!';
});

// Db Config
Flight::register('db','PDO', array("mysql:host=localhost;dbname=kutuphane;","root","mysql"),function($db){
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
    $db->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND, "SET NAMES 'utf8'");
    $db->exec("SET NAMES UTF8");
});

// Register
Flight::route('POST /register', function () {

    $obj = json_decode(file_get_contents("php://input"));

    if(isset($obj)){
        if(!empty($obj->user) && !empty($obj->pass)){
            $db = Flight::db();
            $ex = $db->prepare("INSERT INTO yetkili SET kAdi=:u, kSifre=:p");
            $ex->bindValue(":u", $obj->user);
            $ex->bindValue(":p", $obj->pass);
            $ex->execute();
            if($ex->rowCount()>0){
                Flight::json(array('status' => 200, 'message' => 'OK'));
            }else{
                Flight::json(array('status' => 400, 'message' => 'ERROR'));
            }
        }else{
            Flight::json(array('status' => 400, 'message' => 'ERROR'));
        }
    }
});

// User List
Flight::route('GET /user_list', function () {
    $db = Flight::db();
    $ex = $db->query("SELECT * FROM yetkili ORDER BY id DESC")->fetchAll();
    Flight::json(array(str_replace('/','',Flight::request()->url)=>$ex));
});

Flight::start();
