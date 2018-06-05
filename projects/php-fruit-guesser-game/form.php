<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 6/04/2018
 * Time: 12:11 PM
 */
?>

<form action="index.php" method="post">
    <input class="fruit-name-input-box" placeholder="Enter your choice of fruit from the list" type="text" name="fruitName"/>
    <input class="submit-input-box" type="submit" value="Go!"/>
</form>

<div class="result">
    <?php
    if ($_POST['fruitName'] === $random_fruit) {
//        $feedback = 'Well done! you guessed it right!';
        echo "Well done! you guessed it right!";
        ?>
<br/>
    <img src="images/welldone.png">

    <?php
    }
    else{
//        $feedback = 'Oops! Try again';
        echo "Oops! Try again";
    }
//    echo $feedback;
    ?>
</div>
