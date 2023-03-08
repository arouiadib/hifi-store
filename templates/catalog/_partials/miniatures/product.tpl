{block name='product_miniature_item'}
  <article class="product-miniature js-product-miniature"
           data-id-product="{$product.id_product}"
           data-id-product-attribute="{$product.id_product_attribute}"
           itemscope
           itemtype="http://schema.org/Product">
      <div  class="article-seo"
            itemprop="offers"
            itemscope
            itemtype="https://schema.org/Offer">
          {* <link itemprop="availability" href="{$product.seo_availability}"/> *}
          <meta itemprop="priceCurrency" content="{$currency.iso_code}">
          <meta itemprop="itemCondition" content="https://schema.org/UsedCondition" />
          <meta itemprop="price" content="{$product.price|floatval}" />
          {if $product.show_availability &&  $product.availability !== 'available'}
              <meta itemprop="availability" content="https://schema.org/Discontinued" />
          {else}
              <meta itemprop="availability" content="https://schema.org/InStock" />
          {/if}
          {if $product.cover}
              <link itemprop="image" href="{$product.cover.bySize.home_default.url}" />
          {/if}
          <meta itemprop="description" content="{$product.description_short|truncate:120:'...' nofilter}" />
      </div>
      <div class="thumbnail-container">
          {block name='product_thumbnail'}
            {if $product.cover}
              <a href="{$product.url}" class="thumbnail product-thumbnail">
                <img
                  src = "{$product.cover.bySize.home_default.url}"
                  alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                  data-full-size-image-url = "{$product.cover.large.url}"
                >
              </a>
            {else}
              <a href="{$product.url}" class="thumbnail product-thumbnail">
                <img
                  src = "{$urls.no_picture_image.bySize.home_default.url}"
                >
              </a>
            {/if}
          {/block}

          <div class="product-description">
            {block name='product_name'}
              {if $page.page_name == 'index'}
                <h3 class="h3 product-title" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h3>
              {else}
                <h2 class="h3 product-title" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h2>
              {/if}
            {/block}
          </div>

          {block name='product_flags'}
            <ul class="product-flags">
              {if $product.year_of_construction}
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

               {foreach from=$product.flags item=flag}
                   <li class="product-flag {$flag.type}">{$flag.label}</li>
               {/foreach}
            </ul>
          {/block}

          <div class="highlighted-informations{if !$product.main_variants} no-variants{/if} hidden-sm-down">
            {block name='quick_view'}
              <a class="quick-view" href="#" data-link-action="quickview">
                <i class="material-icons search">&#xE8B6;</i> {l s='Quick view' d='Shop.Theme.Actions'}
              </a>
            {/block}
      </div>
    </div>
  </article>
{/block}
