<?php
require_once('dataContext.php');

class DataService
{
    private PDO $db;

    function __construct()
    {
        $connection = DataContext::getDB();

        $this->db = $connection;
    }

    public function GetPieces()
    {
        $sql = "SELECT * FROM piece";
        $statement = $this->db->prepare($sql);
        $statement->execute();

        // Fetch all the rows collected from the statement...
        // Then return it...
        return $statement->fetchAll();
    }

    public function GetPieceTypeById(int $id)
    {
        $sql = "SELECT * FROM types WHERE TypeId = $id LIMIT 1";
        $statement = $this->db->prepare($sql);
        $statement->execute();

        // Now we just want that exact type name so
        $row = $statement->fetch();

        return $row['TypeName'];
    }
}
