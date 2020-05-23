<?php
function register_stylesheet() { 
 wp_register_style('style', get_stylesheet_directory_uri().'/style.css');
}
function add_stylesheet() { 
 register_stylesheet();
 wp_enqueue_style('style', '', array(), '1.0', false);
}
add_action( 'wp_enqueue_scripts','add_stylesheet');
add_filter( 'show_admin_bar', '__return_false');
add_theme_support('post-thumbnails');
add_action( 'init', 'create_post_type' );
function create_post_type() {
register_post_type( 'news', [
'labels' => [
'name' => 'ニュース',
'singular_name' => 'news',],
'public' => true,
'has_archive' => true,
'menu_position' => 5,
'show_in_rest' => true,
 array(
 'supports' => array( 'title','thumbnail','editor')
)
]);
}
function custom_template_include( $template ) {
if ( is_single() && in_category( 'news' ) ) {
$new_template = locate_template( array(
'single-news.php' ) );
if ( '' != $new_template ) {
return $new_template ;
}
}
return $template;
}
add_filter( 'template_include',
'custom_template_include', 99 );
function my_theme_widgets_init() {
    register_sidebar( array(
    'name' => 'Main Sidebar',
    'id' => 'main-sidebar',
    ) );
    }
    add_action( 'widgets_init',
    'my_theme_widgets_init' );  
?>