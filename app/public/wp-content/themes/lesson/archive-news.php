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
    <div class="single-eyecatch page-eyecatch">
      <img src="<?php echo get_template_directory_uri();
      ?>/img/news-eyecatch.jpg" alt="no-img" />
      <div class="page-title">
        <h1 class="page-title__h1">NEWS</h1>
        <p class="page-title__p">ニュース記事一覧</p>
      </div>
    </div>
    <main>
      <div id="news" class="wrap">
        <div class="news-contain">
          <ul>
          <?php if (have_posts()): ?>
          <?php while (have_posts()) : the_post(); ?>
            <li class="news-list">
              <p class="news-date">
                <?php echo get_the_date('Y-m-d'); ?></p>
              <p class="news-category">
              <?php
                $days = 3;
                $today = date_i18n('U');
                $entry_day = get_the_time('U');
                $keika = date('U',($today -
                $entry_day)) / 86400;
                if ( $days > $keika ):
                    $limit = 3;
                    $num = $wp_query->current_post;
                if ( $limit > $num ):
                    echo 'New';
                endif;
                endif;
              ?>
              </p>
              <a href="<?php the_permalink();?>" 
              class="news-title">
                <?php the_title(); ?>
              </a>
            </li>

            <li class="news-list">
              <p class="news-date">2020/01/01</p>
              <p class="news-category">
                new
              </p>

              <a href="" class="news-title">
                ニュースタイトル
              </a>
            </li>
            <li class="news-list">
              <p class="news-date">2020/01/01</p>
              <p class="news-category">
                new
              </p>

              <a href="" class="news-title">
                ニュースタイトル
              </a>
            </li>
            <li class="news-list">
              <p class="news-date">2020/01/01</p>
              <p class="news-category">
                new
              </p>

              <a href="" class="news-title">
                ニュースタイトル
              </a>
            </li>
            <li class="news-list">
              <p class="news-date">2020/01/01</p>
              <p class="news-category">
                new
              </p>

              <a href="" class="news-title">
                ニュースタイトル
              </a>
            </li>
            <li class="news-list">
              <p class="news-date">2020/01/01</p>
              <p class="news-category">
                new
              </p>

              <a href="" class="news-title">
                ニュースタイトル
              </a>
            </li>
          </ul>
        </div>
      </div>
    </main>
    <div class="contact-cta flex">
      <p class="cta-text">
        estra magazineの無料会員登録はこちらです。
        日々更新した際にお問い合わせメールに送信 いたします。
      </p>
      <a href="" class="cta-btn">会員登録はこちら</a>
    </div>
    <?php get_footer(); ?>
  </body>
</html>