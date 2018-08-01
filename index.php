<?php
require 'vendor/autoload.php';

Flight::route('/', function(){
    echo 'Hello World!';
});

Flight::register('db','PDO', array("mysql:host=localhost;dbname=kutuphane;","root","mysql"),function($db){
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND, "SET NAMES 'utf8'");
});

Flight::route('POST /register', function () {
    $obj = json_decode(file_get_contents("php://input"));
    if(isset($obj)){
        if(!empty($obj->user) && !empty($obj->pass)){
            $db = Flight::db();
            $ex = $db->prepare("INSERT INTO yetkili SET kAdi=:u, kSifre=:p");
            $ex->bindValue(":u",$obj->user);
            $ex->bindValue(":p",$obj->pass);
            $ex->execute();
        }
    }
});

Flight::start();
