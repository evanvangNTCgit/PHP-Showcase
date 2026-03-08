<?php
class DataContext
{
    private static $dsn = 'mysql:host=localhost;dbname=sampledb';
    private static $username = 'mgs_user';
    private static $password = 'pa55word';
    private static $db;

    public static function getDB(){
        // If there is not db connection made yet... Make one
        if(!isset(self::$db)){
            try {
                self::$db = new PDO(
                    self::$dsn,
                    self::$username,
                    self::$password
                );
            } catch (Exception $e){
                return $e->getMessage();
            }
        }

        // Return the DB here.
        return self::$db;
    }
}
