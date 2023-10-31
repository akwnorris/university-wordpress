<?php

add_action('rest_api_init', 'universityLikeRoutes');

function universityLikeRoutes() {
  register_rest_route('university/v1', 'manageLike', array(
    'methods' => 'POST',
    'callback' => 'createLike'
  ));

  register_rest_route('university/v1', 'manageLike', array(
    'methods' => 'DELETE',
    'callback' => 'deleteLike'
  ));
}

function createLike() {
  wp_insert_post(array(
    'post_type' => 'like',
    'post_status' => 'publish',
    'post_title' => 'Our PHP Create Post Test',
    'post_content' => 'Hello World 123'
  ));
}

function deleteLike() {
  return 'Thanks for trying to delete a like';
}