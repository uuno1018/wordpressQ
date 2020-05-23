<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8" />

    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="shortcut icon" href="/img/favicon.ico" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>練習</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="css/style.css" media="all" />
    <link
      href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
  </head>

  <body>
  <?php get_header(); ?>
    <?php if(have_posts()): the_post(); ?>
    <div class="single-eyecatch eyecatch">
    <?php if( has_post_thumbnail() ): ?>
    <?php the_post_thumbnail(); ?>
    <?php else: ?>
    <img src="<?php echo get_template_directory_uri(); ?>/img/no-images.png" alt="no-img" />
    <?php endif; ?>
    </div>
    <div class="single-container container">
      <div class="single-header__contain">
        <div class="style__border">
        <?php if(has_category() ): ?>
          <div class="category-tag single-category-tag">
              <?php echo get_the_category_list(' ' ); ?>
          </div>
          <?php endif; ?>
          <h1 class="single-title">
          <?php the_title(); ?>
          </h1>
          <div class="flex tags-date">
            <div class="single-tags">
              <p class="single-tag__chilg">
              <?php the_tags( '', ' ' ); ?>
              </p>
            </div>
            <p class="single-date">
            <?php echo get_the_date('Y-m-d'); ?>
            </p>
          </div>
        </div>
      </div>
      <div class="main-text">
        <?php the_content(); ?>
      </div>
    </div>
    <?php endif; ?>

    <div class="new-articles new-articles__single">
      <h2 class="section-title">RELATION</h2>
      <div class="flex">
      <?php if(has_category() ) {
        $cats =get_the_category();
        $catkwds = array();
        foreach($cats as $cat){
        $catkwds[] = $cat->term_id}} ?>
            <?php $args = array(
            'post_type' => 'post',
            'posts_per_page' => '3','post__not_in' =>array( $post->ID ),
            'category__in' => $catkwds,'orderby' => 'rand');
            $my_query = new WP_Query( $args );?>
        <?php while ( $my_query->have_posts() ) : $my_query->the_post(); ?>
        <a href="<?php the_permalink(); ?>" class="magazine-colum">
            <?php if( has_post_thumbnail() ): ?>
            <?php the_post_thumbnail(); ?>
            <?php else: ?>
          <img src="./img/article_article.jpeg" alt="no-img" />
          <?php endif; ?>
          <?php if (!is_category() && has_category()):?>
          <p class="category-tag">
          <?php
            $postcat = get_the_category();
            echo $postcat[0]->name;?>
          </p>
          <?php endif; ?>
          <div class="text-content">
            <p class="article__date">2020/01/01</p>
            <h3 class="article__title">
                <?php the_title(); ?>
            </h3>
            <div class="article-tags">
              <p class="article-tags__inner">
                <?php
                $posttags=get_the_tags();if($posttags){foreach($posttags as
                $tag){echo '<span class="tag-span">'.$tag->name.'</span>';}}
                ?></p>
              </p>
            </div>
          </div>
        </a>
        <a href="" class="magazine-colum">
          <img src="./img/article_article.jpeg" alt="no-img" />
          <p class="category-tag">
            カテゴリー
          </p>
          <div class="text-content">
            <p class="article__date">2020/01/01</p>
            <h3 class="article__title">
              タイトルが入ります。タイトルが入ります。タイトルが入ります。
            </h3>
            <div class="article-tags">
              <p class="article-tags__inner">
                <span class="tag">タグが入ります。</span>
              </p>
            </div>
          </div>
        </a>
        <a href="" class="magazine-colum">
          <img src="./img/article_article.jpeg" alt="no-img" />
          <p class="category-tag">
            カテゴリー
          </p>
          <div class="text-content">
            <p class="article__date">2020/01/01</p>
            <h3 class="article__title">
              タイトルが入ります。タイトルが入ります。タイトルが入ります。
            </h3>
            <div class="article-tags">
              <p class="article-tags__inner">
                <span class="tag">タグが入ります。</span>
              </p>
            </div>
          </div>
        </a>
        <?php endwhile; ?>
        <?php wp_reset_postdata(); ?>
      </div>
    </div>
    <?php get_footer(); ?>
  </body>
</html>
