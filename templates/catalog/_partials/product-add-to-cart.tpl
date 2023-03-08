    <div class="product-add-to-cart">
      {if !$configuration.is_catalog}
        {block name='product_quantity'}
          <div class="product-quantity clearfix">
            <div class="qty" style="display: none">
              <input
                type="text"
                name="qty"
                id="quantity_wanted"
                value="1"
                class="input-group"
                min="1"
              >
            </div>

            <div class="add">
              <button
                class="btn btn-primary add-to-cart"
                data-button-action="add-to-cart"
                type="submit"
                {if !$product.add_to_cart_url}
                  disabled
                {/if}
              >
                <i class="material-icons shopping-cart">&#xE547;</i>
                {l s='Add to cart' d='Shop.Theme.Actions'}
              </button>
            </div>
          </div>
        {/block}
      {/if}
    </div>

    {block name='product_prices'}
        {include file='catalog/_partials/product-prices.tpl'}
    {/block}

    <div class="clearfix"></div>
