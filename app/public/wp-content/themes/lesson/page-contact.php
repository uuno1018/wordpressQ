<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="shortcut icon" href="/img/favicon.ico" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>練習</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="css/style.css" media="all" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</head>

<body>
<?php
/*
Template Name: お問い合わせ
*/
?>
<?php get_header(); ?>
<div class="single-eyecatch eyecatch page-eyecatch">
        <?php echo get_the_post_thumbnail($post=54); ?>
        <?php // 投稿のスラッグを取得
        $page = get_post( get_the_ID() ); $slug =
        $page->post_name;
        ?>
    <div class="page-title">
        <h1 class="page-title__h1">
            <?php echo $slug;?>
        </h1>
        <p class=></p>
    </div>
</div>
<div class="contact">
    
    <form class="form" method="post">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="user_name" />
        </div>
        <div>
            <label for="mail">E-mail:</label>
            <input type="email" id="mail" name="user_mail" />
        </div>
        <div>
            <label for="tell">Tell:</label>
            <input type="tell" id="tell" name="user_name" />
        </div>
        <div>
            <label for="msg">Message:</label>
            <textarea id="msg" name="user_message"></textarea>
        </div>
        <div class="button-submit">
            <button class="button" type="submit">Button</button>
        </div>
    </form>
    <?php echo do_shortcode( '[contact-form-7 id="43" title="お問い合わせフォーム"]' ); ?>
</div>

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