<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bulma
 */
?>

<?php get_header(); ?>

<!--<p>This is the index (Programmes - Posts) page</p>-->

<div class="page-title">How we help</div>

<div id="primary" class="content-area">
    <main id="main" class="site-main wrapper" role="main">

        <div class="container">
        <!-- The Loop -->
        <?php
        $count = 1;
        if (have_posts()) : while (have_posts()): the_post();
        if ( ++$count == $wp_query->post_count && ( $wp_query->post_count % 2 ) == 1 ) {
        ?>

            <!-- post 2 -->
            <div class="animated fadeInRight programme-left">
                <div class="programme-right-column">
                    <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><?php the_post_thumbnail('medium_large'); ?></a>
                </div>
                <div class="programme-left-column">
                    <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><h1><?php the_title(); ?></h1></a>
                    <p><?php the_content();?></p>
                    <a href="contact"><button id="volunteer-button"></button></a>
                </div>
            </div>

            <?php } else if ( ($count % 2) == 0) {
            ?>

            <!-- posts 1 & 3 -->
            <div class="animated fadeInLeft programme-right">
                <div class="programme-right-column">
                    <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><h1><?php the_title(); ?></h1></a>
                    <p><?php the_content();?></p>
                    <a href="contact"><button id="volunteer-button"></button></a>
                </div>
                <div class="programme-left-column">
                    <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><?php the_post_thumbnail('medium_large'); ?></a>
                </div>
            </div>

            <?php }
            endwhile;
            ?>

            </div>

            <div class="section pagination">
                <div class="container">
                    <?php the_posts_pagination(); ?>
                </div>
            </div>

        <?php else : ?>
            <?php get_template_part('template-parts/content', 'none'); ?>
        <?php endif; ?>

    </main><!-- #main -->
</div><!-- #primary -->

<?php get_footer(); ?>