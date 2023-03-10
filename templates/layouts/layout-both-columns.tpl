<!doctype html>
<html lang="{$language.iso_code}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">
    {* facebook stuff *}
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v6.0"></script>
    {* end facebook stuff *}

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <header id="header">
        {block name='header'}
            {include file='_partials/header.tpl'}
        {/block}
    </header>

    {widget name="hs_homepage" hook="displayHomeHeaderSection"}

    <main>
      {*
        {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
        {/block}

        {block name='notifications'}
        {include file='_partials/notifications.tpl'}
        {/block}
      *}
      <section id="wrapper">
        {hook h="displayWrapperTop"}
        <div class="container no-padding">
          {block name="left_column"}
            <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
              {if $page.page_name == 'product'}
                {hook h='displayLeftColumnProduct'}
              {else}
                {hook h="displayLeftColumn"}
              {/if}
            </div>
          {/block}

          {block name="content_wrapper"}
            <div id="content-wrapper" class="left-column right-column col-sm-4 col-md-6">
              {hook h="displayContentWrapperTop"}
              {block name="content"}
                <p>Hello world! This is HTML5 Boilerplate.</p>
              {/block}
              {hook h="displayContentWrapperBottom"}
            </div>
          {/block}

          {block name="right_column"}
            <div id="right-column" class="col-xs-12 col-sm-4 col-md-3">
              {if $page.page_name == 'product'}
                {hook h='displayRightColumnProduct'}
              {else}
                {hook h="displayRightColumn"}
              {/if}
            </div>
          {/block}
        </div>

      </section>

      <section>
           {widget name="hs_newestproducts"}
           <div id="bottom">
                  {* {widget name="hs_homepage" hook="displayHomePortfolioSection"} *}
                  {widget name="hs_homepagemanufacturers"}
                  {widget name="hs_homepage" hook="displayHomeContactSection"}
           </div>
      </section>

      <footer id="footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>

    </main>

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}
  </body>
</html>
