<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 22/05/2018
 * Time: 11:39 AM
 */
?>

<?php get_header(); ?>

    <!--<p> This is the Home page </p>-->


        <div class="home-banner">
            <!--            <img src="-->
            <?php //echo get_template_directory_uri() . '/images/home-banner.jpg'; ?><!--">-->
            <div class="animated fadeInUp home-banner-label">
                <h2>Movements of enjoyment</h2>
                <p>"we make their lives a little bit easier"</p>
            </div>
        </div>

    <div class="container">
        <div class="what-we-do" data-aos="zoom-in-up">
            <h2>WHAT WE DO</h2>
            <p>We offer high quality, interactive music therapy to people living with Dementia in an effort to help them
                maintain function, access memory and connect with those around them</p>
        </div>


        <div class="programmes" data-aos="zoom-in-up">
            <a href="programmes"><h1>OUR PROGRAMMES</h1></a>

            <div class="programmes-display">
                <div class="prog">
                    <a href="http://localhost/musicmovesme/music-therapy/"><img src="<?php echo get_template_directory_uri() . '/images/programmes1.jpg'; ?>"></a>
                    <a href="http://localhost/musicmovesme/music-therapy/"><h2>Music Therapy</h2></a>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span>$850 Raised</span>
                        </div>
                    </div>
                </div>
                <div class="prog">
                    <a href="http://localhost/musicmovesme/personalised-playlists/"><img src="<?php echo get_template_directory_uri() . '/images/programmes2.jpg'; ?>"></a>
                    <a href="http://localhost/musicmovesme/personalised-playlists/"><h2>Personalised Playlists</h2></a>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            <span>$430 Raised</span>
                        </div>
                    </div>
                </div>
                <div class="prog">
                    <a href="http://localhost/musicmovesme/hello-world/"><img src="<?php echo get_template_directory_uri() . '/images/programmes3.jpg'; ?>"></a>
                    <a href="http://localhost/musicmovesme/hello-world/"><h2>Interactive Music</h2></a>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span>$620 Raised</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <div class="volunteer-section" data-aos="zoom-in-up">
            <div class="volunteer-section-image">
                <img src="<?php echo get_template_directory_uri() . '/images/home-volunteer-section.jpg'; ?>">
            </div>
            <div class="volunteer-section-content">
                <h2>Volunteer Spotlight</h2>
                <h3>Meet Helen</h3>
                <p>"Helen is a New Zealand Registered Music Therapist. Helen has an undergraduate degree in creative
                    therapies and completed her Masters of Music Therapy at Victoria University and Massey University in
                    2012. Helen is passionate about the development of the music therapy profession in New Zealand,
                    especially around clinical standards and research. "</p>
                <a href="contact">
                    <button id="volunteer-button"></button>
                </a>
            </div>
        </div>

    </div>


    <div class="container">
        <div class="donate-button" data-aos="zoom-in-up">
            <a href="about#donate-form">
                <button id="donate-button"></button>
            </a>
        </div>


        <div class="events" data-aos="zoom-in-up">
            <a href="events"><h1>OUR EVENTS</h1></a>

            <div class="events-display">
                <div class="events-display-left">
                    <h2>Out in the Styx</h2>
                    <p><i class="fas fa-map-marker-alt"></i>&nbsp; &nbsp;2117 Arapuni Road, Pukeatua</p>
                    <p><i class="far fa-clock"></i>&nbsp; &nbsp;27th May 6.30 pm</p>
                </div>
                <div class="events-display-right">
                    <a href="http://localhost/musicmovesme/bulmapress_event/out-in-the-styx/"><img src="<?php echo get_template_directory_uri() . '/images/event1.png'; ?>"></a>
                    <a href="http://localhost/musicmovesme/bulmapress_event/out-in-the-styx/"><button id="read-more-button"></button></a>
                </div>
            </div>

            <div class="events-display">
                <div class="events-display-left">
                    <a href="http://localhost/musicmovesme/bulmapress_event/morning-tea-moonlight/"><img src="<?php echo get_template_directory_uri() . '/images/event2.png'; ?>"></a>
                    <a href="http://localhost/musicmovesme/bulmapress_event/morning-tea-moonlight/"><button id="read-more-button"></button></a>
                </div>
                <div class="events-display-right">
                    <h2>Morning tea & moonlight</h2>
                    <p><i class="fas fa-map-marker-alt"></i>&nbsp; &nbsp;32 Lake Street</p>
                    <p><i class="far fa-clock"></i>&nbsp; &nbsp;06th June 10.30 am</p>
                </div>
            </div>

            <a href="events">
                <button id="events-button"></button>
            </a>

        </div>

    </div>


        <div class="contact-section" data-aos="zoom-in-up">
            <div class="contact-section-label">
                <p>Let's make New Zealand better, together</p>
                <a href="contact">
                    <button id="contact-section-button"></button>
                </a>
            </div>
            <div class="contact-section-image">
                <img src="<?php echo get_template_directory_uri() . '/images/home_contact_section.jpg'; ?>">
            </div>
        </div>


<?php get_footer(); ?>