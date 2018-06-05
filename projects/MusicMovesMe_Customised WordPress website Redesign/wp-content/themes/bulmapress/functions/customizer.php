<?php
/**
 * Theme Customizer Functions
 *
 * @package Bulmapress
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function bulmapress_customize_register( $wp_customize ) {
	$wp_customize->remove_section("colors");
 	$wp_customize->remove_section("background_image");

	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';


    //-------About Page-----//
    $wp_customize->add_section('bulmapress_about_section', array(
        'title' => __('About'),
        'priority' => 30
    ));


    //Our Story - image
    $wp_customize->add_setting('bulmapress_about_image_ourstory', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourstory',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our Story Image'),
            'settings'=>'bulmapress_about_image_ourstory'
        )
    ));

    //Our Story - text
    $wp_customize->add_setting('bulmapress_about_text_ourstory', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourstory', array(
        'type' => 'textarea',
        'label'=> __('About - Our Story text'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourstory'
    ));


    //General description - image
    $wp_customize->add_setting('bulmapress_about_image_general', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_general',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - General Image'),
            'settings'=>'bulmapress_about_image_general'
        )
    ));

    //General description - text
    $wp_customize->add_setting('bulmapress_about_text_general', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_general', array(
        'type' => 'textarea',
        'label'=> __('About - General text'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_general'
    ));


    //Our People - Board Members
    $wp_customize->add_setting('bulmapress_about_image_ourpeople_boardmembers_1', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_boardmembers_1',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Board Members 1 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_boardmembers_1'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_boardmembers_1', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_boardmembers_1', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Board Members 1 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_boardmembers_1'
    ));

    $wp_customize->add_setting('bulmapress_about_image_ourpeople_boardmembers_2', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_boardmembers_2',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Board Members 2 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_boardmembers_2'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_boardmembers_2', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_boardmembers_2', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Board Members 2 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_boardmembers_2'
    ));


    //Our People - Music Therapists
    $wp_customize->add_setting('bulmapress_about_image_ourpeople_therapists_1', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_therapists_1',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Music Therapists 1 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_therapists_1'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_therapists_1', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_therapists_1', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Music Therapists 1 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_therapists_1'
    ));

    $wp_customize->add_setting('bulmapress_about_image_ourpeople_therapists_2', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_therapists_2',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Music Therapists 2 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_therapists_2'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_therapists_2', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_therapists_2', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Music Therapists 2 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_therapists_2'
    ));

    $wp_customize->add_setting('bulmapress_about_image_ourpeople_therapists_3', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_therapists_3',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Music Therapists 3 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_therapists_3'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_therapists_3', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_therapists_3', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Music Therapists 3 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_therapists_3'
    ));

    $wp_customize->add_setting('bulmapress_about_image_ourpeople_therapists_4', array());
    $wp_customize->add_control(new WP_Customize_Image_Control(
        $wp_customize,
        'bulmapress_about_image_ctrl_ourpeople_therapists_4',
        array(
            'section'=>'bulmapress_about_section',
            'label'=>__('About - Our People - Music Therapists 4 - Photo'),
            'settings'=>'bulmapress_about_image_ourpeople_therapists_4'
        )
    ));
    $wp_customize->add_setting('bulmapress_about_text_ourpeople_therapists_4', array());
    $wp_customize->add_control('bulmapress_about_text_ctrl_ourpeople_therapists_4', array(
        'type' => 'textarea',
        'label'=> __('About - Our People - Music Therapists 4 - Name'),
        'section' => 'bulmapress_about_section',
        'settings' => 'bulmapress_about_text_ourpeople_therapists_4'
    ));

}
add_action( 'customize_register', 'bulmapress_customize_register' );



/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function bulmapress_customize_preview_js() {
	wp_enqueue_script( 'bulmapress_customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20151215', true );
}
add_action( 'customize_preview_init', 'bulmapress_customize_preview_js' );