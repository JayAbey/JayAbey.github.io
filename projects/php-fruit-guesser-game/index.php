<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 5/04/2018
 * Time: 1:40 PM
 */
$fruits = ['Apples', 'Oranges', 'Mangoes', 'Grapes'];
$random_fruit = $fruits[array_rand($fruits)];
//var_dump($random_fruit);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fruit Guesser</title>
    <link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>

<?php include_once 'box.php'; ?>

<div class="fruit-list">
    <h2>List of fruits</h2>
    <ul>
        <li>Apples</li>
        <li>Oranges</li>
        <li>Mangoes</li>
        <li>Grapes</li>
    </ul>
</div>

<?php include_once 'form.php'; ?>

</body>
</html>
