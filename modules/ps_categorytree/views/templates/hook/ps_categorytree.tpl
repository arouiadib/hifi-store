{function name="categories" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      <ul class="category-sub-menu">
        {foreach from=$nodes item=node}
          <li data-depth="{$depth}">
              <a href="{$node.link}"
                 {if isset($category) && $category.id == $node.id}class="active"{/if}>
                  {$node.name}
                  {if $node.children}<i class="material-icons arrow-down">&#xE313;</i>{/if}
              </a>
              {if $node.children}
                <div class="collapse in" id="exCollapsingNavbar{$node.id}">
                    {categories nodes=$node.children depth=$depth+1}
                </div>
              {/if}
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

{*{$category|var_dump}*}
<div class="block-categories hidden-sm-down">
    <ul class="category-top-menu">
      <li>
          <a class="text-uppercase h6
                {if isset($category) && $category.id == 2}active{/if}"
                href="{$categories.link nofilter}">
                    {$categories.name}
                    <i class="material-icons arrow-down">&#xE313;</i>
          </a>
      </li>
      <li>{categories nodes=$categories.children}</li>
    </ul>
</div>
