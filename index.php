<?php
require 'databases/DatabaseHandler.php';

$db=new DatabaseHandler();
echo $db->isUserRegistered("tel:94771122336");






