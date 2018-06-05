<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 27/04/2018
 * Time: 1:47 PM
 */
?>

<?php get_header();
$about_text_ourstory = get_theme_mod('bulmapress_about_text_ourstory');

$about_text_general = get_theme_mod('bulmapress_about_text_general');

$about_text_ourpeople_boardmembers_1 = get_theme_mod('bulmapress_about_text_ourpeople_boardmembers_1');
$about_text_ourpeople_boardmembers_2 = get_theme_mod('bulmapress_about_text_ourpeople_boardmembers_2');

$about_text_ourpeople_therapists_1 = get_theme_mod('bulmapress_about_text_ourpeople_therapists_1');
$about_text_ourpeople_therapists_2 = get_theme_mod('bulmapress_about_text_ourpeople_therapists_2');
$about_text_ourpeople_therapists_3 = get_theme_mod('bulmapress_about_text_ourpeople_therapists_3');
$about_text_ourpeople_therapists_4 = get_theme_mod('bulmapress_about_text_ourpeople_therapists_4');
?>

    <!--    <p> This is the About page </p>-->

    <div class="about-section">

            <div class="page-title">Get to know us</div>

        <div class="container">

            <div class="animated fadeIn about-ourstory">
                <div class="about-ourstory-image">
                    <img src="<?php echo get_theme_mod('bulmapress_about_image_ourstory'); ?>">
                </div>
                <div class="about-ourstory-text">
                    <h2>OUR STORY</h2>
                    <p><?php if ($about_text_ourstory || is_customize_preview()):
                            echo wpautop($about_text_ourstory);
                        endif; ?> </p>
                </div>
            </div>

            <a href="#donate-form">
                <div class="animated fadeInUp donate-button">
                    <button id="donate-button"></button>
                </div>
            </a>

            <div class="about-general" data-aos="zoom-in-up">
                <div class="about-general-image">
                    <img src="<?php echo get_theme_mod('bulmapress_about_image_general'); ?>">
                </div>
                <div class="about-general-text">
                    <?php if ($about_text_general || is_customize_preview()):
                        echo wpautop($about_text_general);
                    endif; ?>
                </div>
            </div>


            <div class="our-people">
                <h2 data-aos="zoom-in-up">OUR PEOPLE</h2>

                <h3>Board Members</h3>
                <div class="board-members" data-aos="zoom-in-up">
                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_boardmembers_1'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_boardmembers_1 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_boardmembers_1);
                            endif; ?>
                        </p>
                    </div>
                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_boardmembers_2'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_boardmembers_2 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_boardmembers_2);
                            endif; ?>
                        </p>
                    </div>
                </div>

                <h3>Music Therapists</h3>
                <div class="music-therapists" data-aos="zoom-in-up">
                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_therapists_1'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_therapists_1 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_therapists_1);
                            endif; ?>
                        </p>
                    </div>

                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_therapists_2'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_therapists_2 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_therapists_2);
                            endif; ?>
                        </p>
                    </div>

                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_therapists_3'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_therapists_3 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_therapists_3);
                            endif; ?>
                        </p>
                    </div>

                    <div>
                        <div>
                            <img src="<?php echo get_theme_mod('bulmapress_about_image_ourpeople_therapists_4'); ?>">
                        </div>
                        <p>
                            <?php if ($about_text_ourpeople_therapists_4 || is_customize_preview()):
                                echo wpautop($about_text_ourpeople_therapists_4);
                            endif; ?>
                        </p>
                    </div>
                </div>
            </div>

            <div id="donate-form" class="donate-form" data-aos="zoom-in-up">
                <div class="donate-form-title">Thanks for your Generosity!</div>
                <p>Your donation will help change lives for good</p>
                <div class="donate-form-dataentry">
                    <div>
                        <input type="text" placeholder="First Name">
                    </div>
                    <div>
                        <input type="text" placeholder="Last Name">
                    </div>
                    <div>
                        <input type="text" placeholder="Email">
                    </div>
                    <div>
                        <input type="text" placeholder="Donation amount">
                    </div>
                </div>
                <!--            <div class="donate-form-total">Donation Total: NZD</div>-->
                <div class="donate-form-button">
                    <button id="donate-now-button"></button>
                </div>
            </div>

        </div>

    </div>

<?php get_footer(); ?>