<?php
/**
 * Created by PhpStorm.
 * User: 845873174
 * Date: 27/04/2018
 * Time: 2:42 PM
 */
?>

<?php get_header(); ?>

    <!--<p>This is the Events page</p>-->

    <div class="page-title">Socialise with us</div>

    <div id="primary" class="content-area">
        <main id="main" class="site-main wrapper" role="main">

            <div class="container">

                <?php
                $args = array(
                    'post_type' => 'bulmapress_event',
                    'posts_per_page' => 10
                );
                $loop = new WP_Query($args);

                $count = 1;
                if ($loop->have_posts()) :
                while ($loop->have_posts()) : $loop->the_post();

                    if (++$count == $loop->post_count && ($loop->post_count % 2) == 1) {
                        ?>

                        <!-- post 2 -->
                        <div class="animated fadeInRight event-left">
                            <div class="event-right-column">
                                <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><?php the_post_thumbnail('medium_large'); ?></a>
                            </div>
                            <div class="event-left-column">
                                <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><h1><?php the_title(); ?></h1></a>
                                <p><?php the_content(); ?></p>
                            </div>
                        </div>

                    <?php } else if (($count % 2) == 0) {
                        ?>

                        <!-- posts 1 & 3 -->
                        <div class="animated fadeInLeft event-right">
                            <div class="event-right-column">
                                <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><h1><?php the_title(); ?></h1></a>
                                <p><?php the_content(); ?></p>
                            </div>
                            <div class="event-left-column">
                                <a href="<?php echo site_url() . '/' . $post->post_type . '/' . $post->post_name ?>"><?php the_post_thumbnail('medium_large'); ?></a>
                            </div>
                        </div>

                    <?php }
                endwhile;
                ?>

            </div>

            <?php endif; ?>

        </main>
    </div>

<?php get_footer(); ?>