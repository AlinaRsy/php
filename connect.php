<?
    try {
        $connect = new PDO('mysql:host=localhost; dbname=pr7', 'root', '');
    } catch (PDOException $e) {
        echo $e;
    }
?>