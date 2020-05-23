<footer id="footer">
    <div class="footer-nav__title">
        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="article-logo">
            <?php bloginfo( 'name' ); ?><br />
            <span class="magazine-subtitle">
                <?php bloginfo( 'description' ); ?>
            </span>
        </a>
    </div>
    <div class="footer-sns flex">
        <a href="" class="sns-icon first"></a>
        <a href="" class="sns-icon"></a>
        <a href="" class="sns-icon"></a>
    </div>
    <div class="footer-content flex">
        <div class="footer-about">
            <h3>About</h3>
            <ul>
                <li><a href="">お問い合わせ</a></li>
                <li><a href="https://estra.jp">運営会社</a></li>
                <li><a href="https://coachtech.site">COACHTECH</a></li>
            </ul>
        </div>
    </div>
      <small>Copyright  <?php echo date('Y');?> <?php bloginfo('name'); ?>  2019 estra inc. All Rights Reserved.</small>
    </footer>
    <?php wp_footer(); ?>
  </body>
</html>