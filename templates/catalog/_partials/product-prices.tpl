
{if $product.show_price}
  <div class="product-prices">
      {* <link itemprop="availability" href="{$product.seo_availability}"/> *}
      {block name='product_availability'}
          <div id="product-availability">
              {if $product.show_availability}
                  {if $product.availability == 'available'}
                      <span class="product-available">
                        <i class="material-icons rtl-no-flip product-available">&#xE5CA;</i>
                          {l s='available' d='Shop.Theme.Global'}
                    </span>
                  {else}
                      <span class="product-unavailable">
                        <i class="material-icons">&#xE14B;</i>
                          {l s='unavailable' d='Shop.Theme.Global'}
                      </span>
                  {/if}
              {/if}
          </div>
      {/block}
      {block name='product_price'}
        <div
            class="product-price h5"
            itemprop="offers"
            itemscope
            itemtype="https://schema.org/Offer"
            >
            <meta itemprop="priceCurrency" content="{$currency.iso_code}">
            <meta itemprop="itemCondition" content="https://schema.org/UsedCondition" />
            <meta itemprop="price" content="{$product.price|floatval}" />
            {* <meta itemprop="priceValidUntil" content="2020-11-20" />*}
            {if $product.show_availability and $product.availability == 'available'}
                <meta itemprop="availability" content="https://schema.org/InStock" />
                <div class="current-price">
                  <span itemprop="price" content="{$product.price_amount|floatval}">
                      {$product.price}
                  </span>
                  <span class="tax-shipping-delivery-label">
                    {if $configuration.display_taxes_label}
                      {$product.labels.tax_long}
                    {/if}
                  </span>
                </div>
            {/if}
          </div>

      {/block}
  </div>
{/if}
