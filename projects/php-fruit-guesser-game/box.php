<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 6/04/2018
 * Time: 12:12 PM
 */
?>

<div class="box">

    <?php
    if ($_POST['fruitName'] === $random_fruit) {
        ?>
        <p><?php echo $random_fruit; ?></p>
        <img src="images/<?php echo $random_fruit . '.png'; ?>">
        <?php
    }
    ?>

</div>
