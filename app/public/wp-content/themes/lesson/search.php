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
    <div class="page-name">
<p>検索結果</p>
</div>
<div class="container flex">
<div class="flex-child main-container">
<?php if (have_posts()): ?>
<h2 class="page-name__title"><?php
if (isset($_GET['s']) &&
empty($_GET['s'])) {
echo '検索キーワード未入力 '; // 検索キー
ワードが未入力の場合のテキストを指定
} else {
echo '“'.$_GET['s'] .'”の検索結果
：'.$wp_query->found_posts .'件'; // 検索キーワー
ドと該当件数を表示
}
?>
</h2>
<div class="flex">
<?php while (have_posts()) : the_post();
?>
<a href="<?php the_permalink(); ?>"
class="article-cat">
<?php if( has_post_thumbnail() ): ?>
<?php the_post_thumbnail(); ?>
<?php else: ?>
<img src="<?php echo
get_template_directory_uri();
?>/img/no-images.png" alt="no-img">
<?php endif; ?>
<h3><?php the_title(); ?></h3>
<?php if (!is_category() &&
has_category()): ?>
<p class="category-tag">
<?php
$postcat =
get_the_category();
echo $postcat[0]->name;
?>
</p>
<?php endif; ?>
<?php
$posttags=get_the_tags();if($posttags){foreach(
$posttags as $tag){echo '<span
class="tag">'.$tag->name.'</span>';}} ?>
<p class="date-tag"><?php echo
get_the_date('Y-m-d'); ?></p>
</a>
<?php endwhile; ?>
<?php else: ?>
<!-- 投稿が無い場合の処理 -->
<p>投稿が見つかりません。 </p>
<?php endif; ?>
</div>
<?php get_sidebar(); ?>
</div>
    <?php get_footer(); ?>
    </main>
  </body>
</html>