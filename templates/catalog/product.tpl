{extends file=$layout}

{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='head_seo_keywords' append}Reparation {$product.name} Paris, Reparer {$product.name}{/block}

{block name='head' append}
    <meta name="title" content ="Reparation, vente et achat de {$product.name} Paris hifi-store.com">
  <meta property="og:type" content="product">
  <meta property="og:url" content="{$urls.current_url}">
  <meta property="og:title" content="{$page.meta.title}">
  <meta property="og:site_name" content="{$shop.name}">
  <meta property="og:description" content="{$page.meta.description}">
  <meta property="og:image" content="{$product.cover.large.url}">
  <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
  <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
  <meta property="product:price:amount" content="{$product.price_amount}">
  <meta property="product:price:currency" content="{$currency.iso_code}">
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}">
  <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}

{/block}

{block name='content'}

  <section id="main" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.url}">

    <div class="row">
        <div class="col-sm-8 px-0">
            {block name='page_header_container'}
                {block name='page_header'}
                    <h1 id="product-page-title" class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                {/block}
            {/block}
            {block name='breadcrumb'}
                {include file='_partials/breadcrumb-product-page.tpl'}
            {/block}
        </div>
        <div class="col-sm-4 px-0">
            {if isset($product_manufacturer->id)}
                <div class="product-manufacturer"
                     itemprop="brand"
                     itemtype="http://schema.org/Brand"
                     itemscope>
                    <meta itemprop="name" content="{$product_manufacturer->name}" />
                    {if isset($manufacturer_image_url)}
                        <a href="{$product_brand_url}">
                            <img src="{$manufacturer_image_url}"
                                 class="img img-thumbnail manufacturer-logo"
                                 alt="{$product_manufacturer->name}">
                        </a>
                    {else}
                        <label class="label">{l s='Brand' d='Shop.Theme.Catalog'}</label>
                        <span>
                            <a href="{$product_brand_url}">{$product_manufacturer->name}</a>
                        </span>
                    {/if}
                </div>
            {/if}
        </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        {block name='page_content_container'}
            <section class="page-content" id="content">
            {block name='page_content'}
              {block name='product_flags'}
                <ul class="product-flags">
                  {foreach from=$product.flags item=flag}
                    <li class="product-flag {$flag.type}">{$flag.label}</li>
                  {/foreach}
                    {if isset($product.year_of_construction) && $product.year_of_construction}
                        <li class="product-flag year-of-construction">
                            <div>
                                <div class="yoc-high-part">
                                    Année:
                                </div>
                                <div class="yoc-low-part">
                                    {$product.year_of_construction}
                                </div>
                            </div>
                        </li>
                    {/if}
                </ul>
              {/block}

              {block name='product_cover_thumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}
              <div class="scroll-box-arrows">
                <i class="material-icons left">&#xE314;</i>
                <i class="material-icons right">&#xE315;</i>
              </div>

            {/block}
          </section>
            <div class="product-actions">

                {block name='product_repair'}
                    {widget name="hs_repaircontacting" hook="displayRepairButton" situation="fromProductPage"}
                {/block}

                <div class="clearfix"></div>

                {if $product.add_to_cart_url}
                    {block name='product_prices'}
                        {include file='catalog/_partials/product-prices.tpl'}
                    {/block}
                    {*
                    {block name='product_buy'}
                        <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                            <input type="hidden" name="token" value="{$static_token}">
                            <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                            <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

                            {block name='product_add_to_cart'}
                                {include file='catalog/_partials/product-add-to-cart.tpl'}
                            {/block}
                        </form>
                    {/block}
                    *}
                {else}
                    {block name='product_book'}
                        {widget name="hs_booking" hook="displayBookButton" situation="fromProductPage"}
                    {/block}
                {/if}

            </div>

            {block name='product_additional_info'}
                {include file='catalog/_partials/product-additional-info.tpl'}
            {/block}
        {/block}
        </div>
        <div class="col-md-6">
          <div class="product-information">
            {block name='product_description_short'}
              <div id="product-description-short-{$product.id}" itemprop="description">
                  {$product.description_short nofilter}
                  <p>{l
                      s='Article %product_name% is revised by HiFi Store Paris'
                      d='Shop.Theme.Global'
                      sprintf=['%product_name%' => $product.name]
                      }
                  </p>
              </div>
            {/block}

            {block name='product_tabs'}
              <div class="tabs">

                <div id="tab-content">
                    {block name='product_details'}
                        {include file='catalog/_partials/product-details.tpl'}
                    {/block}
                 <div class="" id="description">
                   {block name='product_description'}
                     <div class="product-description">{$product.description nofilter}</div>
                   {/block}
                 </div>
              </div>
            </div>
          {/block}
        </div>
      </div>
    </div>

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>

{/block}
