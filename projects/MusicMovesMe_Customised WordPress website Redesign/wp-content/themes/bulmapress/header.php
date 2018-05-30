<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Bulmapress
 */
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?> class="is-fullheight">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="profile" href="http://gmpg.org/xfn/11">

    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora|Source+Sans+Pro" rel="stylesheet">

    <!-- Font Awsome icons-->
    <!--	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.min.css"/>

    <!--    <link rel="stylesheet" href="style.css">-->

    <!--Animate on Scroll stylesheet-->
    <link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">

    <!-- animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

    <!--Animate on Scroll script-->
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>

    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
    <?php bulmapress_skip_link_screen_reader_text(); ?>
    <header id="header">
        <nav id="site-navigation" class="navbar" role="navigation">
            <div class="navbar-brand">
                <?php bulmapress_home_link('navbar-item'); ?>
                <?php bulmapress_blog_description('navbar-item is-muted'); ?>
                <?php bulmapress_menu_toggle(); ?>
            </div>
            <div class="navbar-menu">
                <div class="navbar-start"></div>
                <?php bulmapress_navigation(); ?>
            </div>
        </nav>
    </header>

    <div id="content" class="site-content">


