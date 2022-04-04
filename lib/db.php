<?php
$connection = new mysqli("srv103.niagahoster.com", "u1097867_admin", "unon15699jcdx", "u1097867_db_nas");
if ($connection) {
    echo ("Connection Success");
} else {
    echo ("Connection Failed");
    exit();
}