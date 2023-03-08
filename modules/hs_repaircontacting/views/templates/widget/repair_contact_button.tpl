<form action="{$link->getModuleLink('hs_repaircontacting', 'ajax')}" method="post" id="repair">
    <input type="hidden" name="token" value="{$static_token}">
    <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
    <input type="hidden" name="situation" value="{$situation}">
    <div class="repair {if $situation === "fromProductPage"}product{else}quickview{/if}">
        <button
            class="btn btn-primary"
            data-button-action="repair"
            type="submit"
        >
            <i class="material-icons wrench">build</i>
            {l s='Repair' d='Modules.Hsrepaircontacting.Shop'}
        </button>
    </div>
</form>