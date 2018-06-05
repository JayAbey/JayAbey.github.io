<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Bulmapress
 */
?>

</div><!-- #content -->

<footer id="colophon" class="site-footer hero" role="contentinfo">
    <div class="container">
        <div class="hero-body has-text-centered">
            <div class="site-info">
                <div class="footer-title">Thanks to our supporters</div>
                <div class="sponsor-logos">
                    <div>
                        <img src="<?php echo get_template_directory_uri(). '/images/outInTheStyxLogo.jpg'; ?>">
                    </div>
                    <div>
                        <img src="<?php echo get_template_directory_uri(). '/images/hamiltonLogo.jpg'; ?>">
                    </div>
                    <div>
                        <img src="<?php echo get_template_directory_uri(). '/images/lionsLogo.png'; ?>">
                    </div>
                    <div>
                        <img src="<?php echo get_template_directory_uri(). '/images/jamesHill.jpg'; ?>">
                    </div>
                </div>

            </div><!-- .site-info -->
        </div>
    </div><!-- .container -->

    <div class="subscribe">
        <div>
            Sign up for our Newsletter
        </div>
        <div>
            <input type="tex" placeholder="Enter your Email">
        </div>
        <div>
            <button id="subscribe-button"></button>
        </div>
        <div class="social-media-icons">
            <a href="https://www.facebook.com/MusicMovesMeTrust/"><i class="fab fa-facebook-f fa-2x"></i></a>
        </div>
        <div class="social-media-icons">
            <a href="https://twitter.com/musicmmt"><i class="fab fa-twitter fa-2x"></i></a>
        </div>
        <div class="social-media-icons">
            <a href="https://www.youtube.com/watch?v=txop0jpm3rA"><i class="fab fa-youtube fa-2x"></i></a>
        </div>
        <div class="social-media-icons">
            <a href="https://www.instagram.com/musicmovesme_trust/"><i class="fab fa-instagram fa-2x"></i></a>
        </div>
    </div>

</footer><!-- #colophon -->

<div class="footer-menu">
    <nav id="site-navigation" class="navbar" role="navigation">
        <div class="navbar-menu">
            <?php bulmapress_footer_navigation(); ?>
        </div>
    </nav>
</div>

<?php bulmapress_copyright_link(); ?>

</div><!-- #page -->

<?php wp_footer(); ?>



</body>
</html>
