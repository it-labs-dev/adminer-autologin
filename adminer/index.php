<?php

if (!count($_GET)) {
    $_POST['auth'] = [
        'server' => getenv('DB_SERVER'),
        'username' => getenv('DB_USER'),
        'password' => getenv('DB_PASSWORD'),
        'driver' => getenv('DB_DRIVER'),
        'db' => getenv('DB_NAME')
    ];
}

require './adminer-4.8.1.php';