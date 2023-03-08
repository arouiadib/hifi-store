{assign var=_last value=$breadcrumb|@end}

<nav data-depth="{$breadcrumb.count}" class="breadcrumb hidden-xs-down">
  <span id="product-page-position">{l s='You are in:' d='Shop.Theme.Catalog'}</span>
  <span>
      <ol id="product-page-breadcrumb-ol" itemscope itemtype="http://schema.org/BreadcrumbList">
        {block name='breadcrumb'}
          {foreach from=$breadcrumb.links item=path name=breadcrumb}
              {if $path !== $breadcrumb.links[$_last-1]}
                  {block name='breadcrumb_item'}
                      <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                          <a itemprop="item"
                             href="{if $path.title === "Accueil"}
                                        {url entity='category' id=2 id_lang=2}
                                    {else}
                                        {$path.url}
                                    {/if}">
                            <span itemprop="name">
                                  {if $path.title === "Accueil"}
                                      {l s='Accueil' d='Shop.Theme.Catalog'}
                                  {else}
                                      {$path.title}
                                  {/if}
                              </span>
                          </a>
                          <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
                      </li>
                  {/block}
              {/if}
          {/foreach}
        {/block}
      </ol>
  </span>
</nav>