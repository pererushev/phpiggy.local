<?php

declare(strict_types=1);

namespace Framework;

use PDO, PDOException;

class Database
{
    public PDO $connection;
    public function __construct(
        string $driver = 'mysql',
        array $config = [
            'host' => 'phpiggy.docker',
            'port' => 3306,
            'dbname' => 'phpiggy'
        ],
        string $username = 'root',
        string $password = ''
    ) {
        $config = http_build_query(data: $config, arg_separator: ';');

        $dsn = "{$driver}:{$config}";

        $this->connection = new PDO($dsn, $username, $password);

        /* try {
            $this->connection = new PDO($dsn, $username, $password);
        } catch (PDOException $e) {
            die("Unable connect to database");
        } */
    }
}
