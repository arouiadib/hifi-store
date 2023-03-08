<div class="images-container">

  {block name='product_cover'}
    <div class="product-cover">
      {if $product.cover}
        <img class="js-qv-product-cover" src="{$product.cover.bySize.large_default.url}"
             alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name} cover{/if}"
             title="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name} cover{/if}"
             itemprop="image">
        <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
          <i class="material-icons zoom-in">&#xE8FF;</i>
        </div>
      {else}
        <img src="{$urls.no_picture_image.bySize.large_default.url}" style="width:100%;">
      {/if}
    </div>
  {/block}

  {block name='product_images'}
    <div class="js-qv-mask mask">
      <ul class="product-images js-qv-product-images">
        {foreach from=$product.images item=image name=theimage}
          <li class="thumb-container">
            <img
              class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}"
              data-image-medium-src="{$image.bySize.medium_default.url}"
              data-image-large-src="{$image.bySize.large_default.url}"
              src="{$image.bySize.home_default.url}"
              alt="{if !empty($image.legend)}{$image.legend}{else}{$product.name}{/if} image no{$smarty.foreach.theimage.index}"
              title="{if !empty($image.legend)}{$image.legend}{else}{$product.name}{/if} {$smarty.foreach.theimage.index}"
              width="100"
              itemprop="image"
            >
          </li>
        {/foreach}
      </ul>
    </div>
  {/block}
</div>
{hook h='displayAfterProductThumbs'}
