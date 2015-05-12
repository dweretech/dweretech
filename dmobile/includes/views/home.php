<?php render('_header',array('title'=>$title))?>

<p>Welcome! <br />
 This is a demo for a <a href="http://192.168.174.131/mobi/Mobile-Detect/examples/">Dwere Mobile Service Site</a>, which shows you how to use PHP, MySQL and jQuery mobile and create a super simple computer shop website.</p>
<p>Remember to try browsing this site using different browser resolutions.</p>

<ul data-role="listview" data-inset="true" data-theme="c" data-dividertheme="b">
    <li data-role="list-divider">Choose a product category</li>
    <?php render($content) ?>
</ul>

<?php render('_footer')?>