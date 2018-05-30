<?php
/**
 * The template for displaying all single posts (single programme page and single event page)
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Bulmapress
 */

get_header(); ?>

<div class="container">

<?php while ( have_posts() ) : the_post(); ?>
<div class="page-title"><?php the_title(); ?></div>
<?php endwhile; ?>

		<?php while ( have_posts() ) : the_post(); ?>
			<?php get_template_part( 'template-parts/content', 'post' ); ?>

		<?php endwhile; ?>

</div>

<?php get_footer(); ?>
