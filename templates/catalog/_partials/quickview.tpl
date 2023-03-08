<div id="quickview-modal-{$product.id}-{$product.id_product_attribute}" class="modal fade quickview" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
       </button>
     </div>
     <div class="modal-body">
      <div class="row">
        <div class="col-md-6 col-sm-6 hidden-xs-down">
          {block name='product_cover_thumbnails'}
            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
          {/block}
        <div class="arrows js-arrows">
            <i class="material-icons arrow-up js-arrow-up">&#xE316;</i>
            <i class="material-icons arrow-down js-arrow-down">&#xE313;</i>
        </div>
        </div>
        <div class="col-md-6 col-sm-6 right-part">
          <h1 class="h1">{$product.name}</h1>
          {block name='product_description_short'}
              <div id="product-description-short" itemprop="description">
                  {$product.description_short|truncate:300:'...' nofilter}
              </div>
              {block name='product_more_details'}
                  <button class="btn btn-primary more_details"
                          onclick="location.href='{$product.url}'"
                          type="button">
                      {l s='Show details' d='Shop.Theme.Actions'}
                  </button>
              {/block}
              <a class="clearfix"></a>
          {/block}
          {block name='product_buy'}
            <div class="product-actions">
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

            <div class="clearfix"></div>

            {block name='product_repair'}
                {widget name="hs_repaircontacting" hook="displayRepairButton" situation="fromQuickView"}
            {/block}
          </div>
        {/block}
        </div>
      </div>
     </div>
   </div>
 </div>
</div>
