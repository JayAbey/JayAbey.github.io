<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 21/05/2018
 * Time: 3:18 PM
 */
function bulmapress_woocommerce_setup()
{
    add_theme_support('woocommerce');
    add_theme_support('wc-product-gallery-zoom');
    add_theme_support('wc-product-gallery-lightbox');
    add_theme_support('wc-product-gallery-slider');
}
add_action('after_setup_theme', 'bulmapress_woocommerce_setup');

function bulmapress_woocommerce_scripts()
{
    //stylesheet
    wp_enqueue_style('bulmapress-woocommerce-style', get_template_directory_uri(). '/woocommerce.css');
}
add_action('wp_enqueue_scripts', 'bulmapress_woocommerce_scripts');

/**
 * Add 'woocommerce-active' class to body tag
 * @return array
 */
//function bulmapress_woocommerce_active_body_class()
//{
//    $classes[] = 'woocommerce-active';
//    return $classes;
//}
//add_filter('body_class', 'bulmapress_woocommerce_active_body_class');