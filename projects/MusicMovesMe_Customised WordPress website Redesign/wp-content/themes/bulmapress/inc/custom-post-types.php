<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 27/04/2018
 * Time: 2:39 PM
 */

function bulmapress_create_post_types()
{

    /*Events Page*/
    register_post_type('bulmapress_event',
        array(
            'labels' => array(
                'name' => __('Events'),
                'singular_name' => __('Event')
            ),
            'public' => true,
            'has_archive' => true,
            'menu_position' => 5,
            'supports' => array(
                'editor',
                'title',
                'thumbnail'
            )
        )
    );
    //create a new taxonomy for custom post type
    register_taxonomy(
        'bulmapress_type',
        'bulmapress_event',
        array(
            'label' => __('Types'),
            'labels' => array(
                'name' => __('Types'),
                'singular_name' => __('Type')
            )
        )
    );
}
add_action('init', 'bulmapress_create_post_types');