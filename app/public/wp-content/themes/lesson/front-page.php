<?php get_header(); ?>
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
    <title>lesson-1</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="css/style.css" media="all" />
    <link
      href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
  </head>
  <?php get_header(); ?>
  <body>
    <div class="top-eyecatch"></div>
    <main>
      <div class="flex">
        <div class="container-top">
          <div class="new-articles">
            <h2 class="section-title">NEW ARTICLES</h2>
            <div class="flex">
            <?php
            $posts = new WP_Query(
            array('post_type' => 'post','posts_per_page' => 3));
            if ( have_posts() ) : while (
            $posts->have_posts() ) : $posts->the_post();?>
              <a href="" class="magazine-colum">
              <?php if (has_post_thumbnail()) : ?>
              <?php the_post_thumbnail(); ?>
              <?php else : ?>
                <img src="./img/article_article.jpeg" alt="no-img" />
                <?php endif; ?>
                <?php if (!is_category() && has_category()) : ?>
                <p class="category-tag">
                  カテゴリー
                </p>
                <?php endif; ?>
                <div class="text-content">
                  <p class="article__date">2020/01/01</p>
                  <h3 class="article__title">
                  <?php
                  if (mb_strlen($post->post_title, 'UTF-8') > 30) {
                  $title = mb_substr($post->post_title, 0, 30,'UTF-8');
                  echo $title . '…';
                  } else {echo $post->post_title;}
                    ?>
                  </h3>
                  <div class="article-tags">
                    <p class="article-tags__inner">
                    <?php $posttags = get_the_tags();
                    if ($posttags) {
                      foreach ($posttags as $tag) {
                      echo '<span class="tag">' . $tag->name .'</span>';} 
                      } ?>
                    </p>
                  </div>
                </div>
              </a>
              <?php endwhile; ?>
              <?php else : ?>
            <p>投稿が見つかりません。</p>
            <?php endif; ?>  
            </div>
          </div>

          <div class="category-sec">
            <h2 class="section-title">INTERVIEW</h2>
            <div class="flex">
            <?php
              $test_query = new WP_Query(array('post_type' => 'post',
              'category_name' => 'test','posts_per_page' => 3,));?>
              <?php if ( $test_query->have_posts()) : ?>
              <?php while ($test_query->have_posts() ) : ?>
              <?php $test_query->the_post(); ?>
              <a href="<?php the_permalink(); ?>" class="magazine-colum top-interview">
              <?php if (has_post_thumbnail()) : ?>
                <?php the_post_thumbnail(); ?>
                <?php else : ?>
                <img src="./img/article_article.jpeg" alt="no-img" />
                <?php endif; ?>
                <?php if (!is_category() && has_category()) :?>
                <p class="category-tag">
                <?php $postcat = get_the_category();
                echo $postcat[0]->name; ?>
                </p>
                <?php endif; ?>
                <div class="text-content">
                  <p class="article__date"><?php echo get_the_date('Y-m-d'); ?></p>
                  <h3 class="article__title">
                  <?php
                    if (mb_strlen($post->post_title, 'UTF-8')> 30) {$title = mb_substr($post->post_title,
                    0, 30, 'UTF-8');echo $title . '…'; } else {echo $post->post_title;}?>
                  </h3>
                  <div class="article-tags">
                    <p class="article-tags__inner">
                    <?php $posttags = get_the_tags();
                      if ($posttags) {foreach ($posttags as $tag) {
                      echo '<span class="tag-span">' .$tag->name . '</span>';}} ?>
                    </p>
                  </div>
                </div>
              </a>
              <a href="" class="magazine-colum top-interview">
                <img src="./img/article_article.jpeg" alt="no-img" />

                <p class="category-tag">
                  カテゴリー
                </p>

                <div class="text-content">
                  <p class="article__date">2020/01/01</p>
                  <h3 class="article__title">
                    記事のタイトルが入ります。記事のタイトルが入ります。記事のタイトルが入ります。
                  </h3>
                  <div class="article-tags">
                    <p class="article-tags__inner">
                      <span class="tag">タグ名</span>
                    </p>
                  </div>
                </div>
              </a>
              <a href="" class="magazine-colum top-interview">
                <img src="./img/article_article.jpeg" alt="no-img" />

                <p class="category-tag">
                  カテゴリー
                </p>

                <div class="text-content">
                  <p class="article__date">2020/01/01</p>
                  <h3 class="article__title">
                    記事のタイトルが入ります。記事のタイトルが入ります。記事のタイトルが入ります。
                  </h3>
                  <div class="article-tags">
                    <p class="article-tags__inner">
                      <span class="tag">タグ名</span>
                    </p>
                  </div>
                </div>
              </a>
              <a href="" class="magazine-colum top-interview">
                <img src="./img/article_article.jpeg" alt="no-img" />

                <p class="category-tag">
                  カテゴリー
                </p>

                <div class="text-content">
                  <p class="article__date">2020/01/01</p>
                  <h3 class="article__title">
                    記事のタイトルが入ります。記事のタイトルが入ります。記事のタイトルが入ります。
                  </h3>
                  <div class="article-tags">
                    <p class="article-tags__inner">
                    <?php $posttags = get_the_tags();
                    if ($posttags) {foreach ($posttags as $tag) {
                    echo '<span class="tag-span">' .$tag->name . '</span>';}} ?>
                    </p>
                  </div>
                </div>
              </a>
              <?php endwhile; ?>
              <?php endif; ?>
            <?php wp_reset_postdata(); ?>
            </div>
            <p class="news-articles_link">
            <?php
            $category_id = get_cat_ID('test');
            $category_link = get_category_link($test_id);?>
            </div>
            <p class="news-articles_link">
              <a href="<?php echo esc_url($test_link); ?>" class="news-articles_link_text"
                >インタビューの一覧はこちら→</a>
            </p>
          <div id="news" class="wrap">
            <h2 class="section-title">BRAND NEWS</h2>
            <div class="news-contain">
              <ul>
              <?php
                  $posts = new WP_Query(
                    array(
                      'post_type' => 'news',
                      'posts_per_page' => 3
                    ));
                    if ( have_posts() ) : while (
                  $posts->have_posts() ) : $posts->the_post();
                ?>
                <li class="news-list">
                  <p class="news-date">
                    <?php echo get_the_date('Y-m-d'); ?>
                  </p>
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
                  <a href="<?php the_permalink(); ?>" class="news-title">
                    <?php the_title(); ?>
                  </a>
                </li>
                <?php endwhile; endif; wp_reset_query(); ?>
              </ul>
              <p class="news-articles_link">
                <a href="<?php echo get_post_type_archive_link( 'news' ); ?>" 
                class="news-articles_link_text">ニュース一覧はこちら→</a>
              </p>
            </div>
          </div>
        </div>

        <?php get_sidebar(); ?>
          <ul class="menu">
            <li id="search-3" class="widget widget_search">
              <h2 class="widgettitle">記事検索</h2>
              <form
                method="get"
                class="searchform"
                action="http://lesson1.local/"
              >
                <input
                  type="text"
                  placeholder="キーワード検索!!"
                  name="s"
                  class="searchfield"
                  value=""
                />
                <input
                  type="submit"
                  value=""
                  alt="検索"
                  title="検索"
                  class="searchsubmit"
                />
              </form>
            </li>
            <li id="categories-3" class="widget widget_categories">
              <h2 class="widgettitle">カテゴリー一覧</h2>
              <ul>
                <li class="cat-item cat-item-23">
                  <a href="http://lesson1.local/category/interview/"
                    >interview</a
                  >
                </li>
                <li class="cat-item cat-item-1">
                  <a href="http://lesson1.local/category/uncategorized/"
                    >Uncategorized</a
                  >
                </li>
                <li class="cat-item cat-item-2">
                  <a
                    href="http://lesson1.local/category/%e3%83%97%e3%83%ad%e3%82%b0%e3%83%a9%e3%83%9f%e3%83%b3%e3%82%b0%e3%82%b9%e3%82%af%e3%83%bc%e3%83%ab/"
                    >プログラミングスクール</a
                  >
                </li>
                <li class="cat-item cat-item-13">
                  <a href="http://lesson1.local/category/%e5%ad%a6%e7%bf%92/"
                    >学習</a
                  >
                </li>
                <li class="cat-item cat-item-19">
                  <a
                    href="http://lesson1.local/category/%e6%90%ba%e5%b8%af%e9%9b%bb%e8%a9%b1/"
                    >携帯電話</a
                  >
                </li>
              </ul>
            </li>
            <li id="tag_cloud-2" class="widget widget_tag_cloud">
              <h2 class="widgettitle">タグ一覧</h2>
              <div class="tagcloud">
                <a
                  href="http://lesson1.local/tag/docomo/"
                  class="tag-cloud-link tag-link-21 tag-link-position-1"
                  style="font-size: 8pt;"
                  aria-label="docomo (1個の項目)"
                  >docomo</a
                >
                <a
                  href="http://lesson1.local/tag/wordpress/"
                  class="tag-cloud-link tag-link-22 tag-link-position-2"
                  style="font-size: 8pt;"
                  aria-label="wordpress (1個の項目)"
                  >wordpress</a
                >
                <a
                  href="http://lesson1.local/tag/%e3%81%82%e3%81%82/"
                  class="tag-cloud-link tag-link-9 tag-link-position-3"
                  style="font-size: 8pt;"
                  aria-label="ああ (1個の項目)"
                  >ああ</a
                >
                <a
                  href="http://lesson1.local/tag/%e3%82%b5%e3%83%b3%e3%83%97%e3%83%ab/"
                  class="tag-cloud-link tag-link-25 tag-link-position-4"
                  style="font-size: 8pt;"
                  aria-label="サンプル (1個の項目)"
                  >サンプル</a
                >
                <a
                  href="http://lesson1.local/tag/%e3%83%97%e3%83%ad%e3%82%b0%e3%83%a9%e3%83%9f%e3%83%b3%e3%82%b0/"
                  class="tag-cloud-link tag-link-4 tag-link-position-5"
                  style="font-size: 22pt;"
                  aria-label="プログラミング (2個の項目)"
                  >プログラミング</a
                >
                <a
                  href="http://lesson1.local/tag/%e5%81%a5%e5%ba%b7/"
                  class="tag-cloud-link tag-link-24 tag-link-position-6"
                  style="font-size: 8pt;"
                  aria-label="健康 (1個の項目)"
                  >健康</a
                >
                <a
                  href="http://lesson1.local/tag/%e6%90%ba%e5%b8%af%e9%9b%bb%e8%a9%b1/"
                  class="tag-cloud-link tag-link-20 tag-link-position-7"
                  style="font-size: 8pt;"
                  aria-label="携帯電話 (1個の項目)"
                  >携帯電話</a
                >
              </div>
            </li>

            <li id="wpp-3" class="widget popular-posts">
              <h2 class="widgettitle">人気記事</h2>
              <!-- cached -->
              <!-- WordPress Popular Posts -->

              <ul class="wpp-list wpp-list-with-thumbnails">
                <li>
                  <a
                    href="http://lesson1.local/%e3%82%a4%e3%83%b3%e3%82%bf%e3%83%93%e3%83%a5%e3%83%bc%e9%96%8b%e5%a7%8b/"
                    target="_self"
                    ><img
                      src="http://lesson1.local/wp-content/uploads/wordpress-popular-posts/84-featured-150x150.jpg"
                      width="150"
                      height="150"
                      alt=""
                      class="wpp-thumbnail wpp_featured"
                  /></a>

                  <a
                    href="http://lesson1.local/%e3%82%a4%e3%83%b3%e3%82%bf%e3%83%93%e3%83%a5%e3%83%bc%e9%96%8b%e5%a7%8b/"
                    class="wpp-post-title"
                    target="_self"
                    >インタビュー開始</a
                  >
                </li>
              </ul>
            </li>
          </ul>
        </aside>
      </div>
    </main>
    <div class="contact">
      <h2 class="section-title">contact</h2>
      <div class="form">
        <?php echo do_shortcode( '[contact-form-7 id="98" title="お問い合わせフォーム"]' ); ?>
      </div>
    </div>
    <?php get_footer(); ?>
  </body>
</html>
