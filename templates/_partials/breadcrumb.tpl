<nav data-depth="{$breadcrumb.count}" class="breadcrumb">
  <ol itemscope itemtype="http://schema.org/BreadcrumbList">
    {block name='breadcrumb'}
      {foreach from=$breadcrumb.links item=path name=breadcrumb}
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
      {/foreach}
    {/block}
  </ol>
</nav>