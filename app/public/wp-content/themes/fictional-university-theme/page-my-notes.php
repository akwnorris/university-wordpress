<?php

if (!is_user_logged_in()) {
    esc_url(wp_redirect(site_url('/')));
    exit;
}

get_header();

while(have_posts()) {
    the_post(); 
    pageBanner(array(
    ));
    ?>

    <div class="container container--narrow page-section">
        test    
    </div>
    
<?php }

get_footer();

?>