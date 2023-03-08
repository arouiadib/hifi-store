<div id="order-items" class="col-md-12">
  <div class="order-confirmation-table">
          <div class="row">
              {block name='order_confirmation_table'}
              <div class="col-md-8">
                  {block name='order_items_table_head'}
                      <h3 class="card-title h3">{l s='Order items' d='Shop.Theme.Checkout'}</h3>
                  {/block}
                  {foreach from=$products item=product}
                      <div class="order-line row">
                          <div class="col-sm-4 col-xs-5">
                            <span class="image">
                              <img src="{$product.cover.medium.url}" />
                            </span>
                            </div>
                            <div class="col-sm-8 col-xs-7 details">
                              {if $add_product_link}<a href="{$product.url}" target="_blank">{/if}
                                  <span>{$product.name}</span>
                                  {if $add_product_link}</a>{/if}
                              <div class="qty bold">{$product.total}</div>
                            </div>
                      </div>
                  {/foreach}
              </div>
              <div id="order-confirmation-totals" class="col-md-4">
                  <table>
                      {foreach $subtotals as $subtotal}
                          {if $subtotal.type !== 'tax' and $subtotal.value !== ''}
                              <tr>
                                  <td>{$subtotal.label}</td>
                                  <td>{$subtotal.value}</td>
                              </tr>
                          {/if}
                      {/foreach}
                      {if $subtotals.tax.label !== null}
                          <tr class="sub">
                              <td>{$subtotals.tax.label}</td>
                              <td>{$subtotals.tax.value}</td>
                          </tr>
                      {/if}
                      <tr class="font-weight-bold">
                          <td><span class="text-uppercase">{$totals.total.label}</span> {$labels.tax_short}</td>
                          <td>{$totals.total.value}</td>
                      </tr>
                  </table>
              </div>
              {/block}
          </div>
      </div>
</div>
