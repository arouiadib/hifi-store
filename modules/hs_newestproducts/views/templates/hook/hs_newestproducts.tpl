<section id="newest-products" class="featured-products clearfix">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-5">
                {hook h="displaySearch" d='ps_searchbar'}
            </div>
            <div class="col-sm-12 col-md-7">
                <div class="row all-products">
                    <div class="col-sm-12 col-md-4 col-lg-5">
                        <span class="ou-bien">{l s='Ou bien consulter' d='Modules.Hsnewestproducts.Shop'}</span>
                    </div>
                    <div class="col-sm-12 col-md-8 col-lg-7"">
                        <a id="newest-products-link" class="button-fixed" href="{$allProductsLink}">
                            <div>
                                <span>
                                {l s='All products' d='Modules.Hsnewestproducts.Shop'}
                            </span>
                                <i class="material-icons">
                                    &#xE315;
                                </i>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row products-container">
            <div class="col-md-12">
                <h2 class="h2 products-section-title text-uppercase">
                    {l s='Some of our Products' d='Modules.Hsnewestproducts.Shop'}
                </h2>
            </div>
            <div class="col-md-12">
                <div class="products">
                    {foreach from=$products item="product"}
                        {include file="catalog/_partials/miniatures/product.tpl" product=$product}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</section>