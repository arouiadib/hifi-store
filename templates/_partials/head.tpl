{block name='head_charset'}
  <meta charset="utf-8">
{/block}
{block name='head_ie_compatibility'}
  <meta http-equiv="x-ua-compatible" content="ie=edge">
{/block}

{block name='head_seo'}
  <title>{block name='head_seo_title'}{$page.meta.title}{/block}</title>

  <meta name="description" content="{block name='head_seo_description'}{$page.meta.description}{/block}">

    {*
    <meta name="description" content="Vous êtes l'heureux propriétaire d'un appareil haute fidélité vintage
    que vous souhaitez réviser, réparer et remettre en état, vous êtes mélomane et passionné d'équipements
    hifi de caractère : Aimad Aroui vous accueille dans son atelier auditorium Hifi Store">
    *}
    <meta name="keywords" content="{block name='head_seo_keywords'}{$page.meta.keywords}{/block}">

    <!-- To be administrated -->
    <meta name="author" content="hifi-store.com">

    {if $page.meta.robots !== 'index'}
      <meta name="robots" content="{$page.meta.robots}">
    {/if}
    {if $page.canonical}
      <link rel="canonical" href="{$page.canonical}">
    {/if}
    {block name='head_hreflang'}
        {foreach from=$urls.alternative_langs item=pageUrl key=code}
              <link rel="alternate" href="{$pageUrl}" hreflang="{$code}">
        {/foreach}
    {/block}
  {/block}

  {block name='head_viewport'}
    <meta name="viewport" content="width=device-width, initial-scale=1">
  {/block}

  <meta name="google-site-verification" content="B7VCZccokz2LWJc2f_0m0mndCoolfluhvWN7h84dJ2c" />

  {block name='head_icons'}
    {* from favicon-generator.org  *}
  <link rel="apple-touch-icon" sizes="57x57" href="{$urls.img_url}favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="{$urls.img_url}favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="{$urls.img_url}favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="{$urls.img_url}favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="{$urls.img_url}favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="{$urls.img_url}favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="{$urls.img_url}favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="{$urls.img_url}favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="{$urls.img_url}favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="{$urls.img_url}favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="{$urls.img_url}favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="{$urls.img_url}favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="{$urls.img_url}favicon/favicon-16x16.png">
  <link rel="manifest" href="{$urls.img_url}favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="{$urls.img_url}favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
  <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
{/block}

{block name='stylesheets'}
  {include file="_partials/stylesheets.tpl" stylesheets=$stylesheets}
{/block}

{block name='javascript_head'}
  {include file="_partials/javascript.tpl" javascript=$javascript.head vars=$js_custom_vars}
{/block}

{block name='hook_header'}
  {$HOOK_HEADER nofilter}
{/block}

{block name='hook_extra'}{/block}
