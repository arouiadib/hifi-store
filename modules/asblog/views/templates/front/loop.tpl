<div itemtype="#" itemscope="" class="card col-sm-6 col-md-3 mr-0 ml-1 pl-0">
    <div id="blogpost-{$post.id_post|escape:'htmlall':'UTF-8'}" >

            {assign var="image_url" value="`$urls.img_ps_url`blog/post/`$post.post_img`"}
            {if $post.post_img === 'no'}
                {$image_url = "`$urls.img_ps_url`blog/no.jpg"}
            {/if}

            <a class="image" title="{$post.meta_title}"
               href="{$bloglink->getBlogPostLink($post.id_post, $post.link_rewrite)|escape:'htmlall':'UTF-8'}">
                <div class="card__header">
                    <img src="{$image_url}" alt="{$post.meta_title}" class="card__image" width="600">
                </div>

                <div class="card__body">
                    <span class="tag tag-brown">{$post.category}</span>
                    <h4>{$post.title}</h4>
                    <p>{$post.summary|truncate:110:'...' nofilter}</p>
                </div>
                <div class="card__footer">
                    <div class="user">
                        <img src="{$post.author_image}" alt="user__image" class="user__image" width="40">
                        <div class="user__info">
                            <h5>{$post.firstname} {$post.lastname}</h5>
                            <small>{$post.date_add|date_format:"%b %d, %Y"}</small>
                        </div>
                    </div>
                </div>
            </a>

            {*<p class='title_block'>
              <a title="{$post.meta_title|escape:'htmlall':'UTF-8'}"
                    href="{$bloglink->getBlogPostLink($post.id_post, $post.link_rewrite)|escape:'htmlall':'UTF-8'}">
                {$post.title|escape:'htmlall':'UTF-8'}</a>
            </p>*}

            {*<span class="info">{$post.date_add|date_format:"%b %d, %Y"}</span>*}

          {* <span class="smart-blog-posts-info">{if $smartshowauthor ==1}{l s='Posted by' mod='smartblog'}
               <span itemprop="author">&nbsp;<i class="icon icon-user"></i>&nbsp; {if $smartshowauthorstyle != 0}{$post.firstname|escape:'htmlall':'UTF-8'}
                   {$post.lastname|escape:'htmlall':'UTF-8'}{else}{$post.lastname|escape:'htmlall':'UTF-8'}
                   {$post.firstname|escape:'htmlall':'UTF-8'}{/if}
               </span> {/if}*}
{*                {$assocCats = BlogCategory::getPostCategoriesFull($post.id_post)}
                {$catCounts = 0}
                {if !empty($assocCats)}
                    &nbsp;&nbsp;<i class="icon icon-tags"></i>&nbsp;
                    <span itemprop="articleSection">
                        {foreach $assocCats as $catid=>$assoCat}
                            {if $catCounts > 0}, {/if}
                            {$catlink=[]}
                            {$catlink.id_category = $assoCat.id_category}
                            {$catlink.slug = $assoCat.link_rewrite}
                            <a
                                href="{$smartbloglink->getSmartBlogCategoryLink($assoCat.id_category,$assoCat.link_rewrite)|escape:'htmlall':'UTF-8'}">
                                {$assoCat.name|escape:'htmlall':'UTF-8'}
                            </a>
                            {$catCounts = $catCounts + 1}
                        {/foreach}
                    </span>
                {/if}*}
   {*             {if Configuration::get('smartenablecomment') == 1}
                &nbsp; <span class="comment">&nbsp;<i class="icon icon-comments"></i>&nbsp;
                    <a href="*}{*{$smartbloglink->getSmartBlogPostLink($post.id_post,$post.link_rewrite)|escape:'htmlall':'UTF-8'}*}



{*        <div class="articleContent">
            {if isset($ispost) && !empty($ispost)}
                <a itemprop="url"
                    href="*}{*{$smartbloglink->getSmartBlogPostLink($post.id_post,$post.cat_link_rewrite)|escape:'htmlall':'UTF-8'}*}{*"
                    title="{$post.meta_title|escape:'htmlall':'UTF-8'}" class="imageFeaturedLink">
            {/if}

            {assign var="image_url" value="`$urls.img_ps_url`blog/post/`$post.post_img`.jpeg"}
            {if $post.post_img === 'no'}
            {$image_url = "`$urls.img_ps_url`blog/no.jpg"}
            {/if}
            <img itemprop="image"
                 alt="{$post.meta_title|escape:'htmlall':'UTF-8'}"
                 src="{$image_url}"
                 class="imageFeatured"
                 width="150">

            {if isset($ispost) && !empty($ispost)}
                </a>
            {/if}

            <span class="blog-post-views">
                <i class="icon icon-eye-open"></i>
                {l s=' views' d='Modules.Asblog.Shop'}
                <span class="views-count-number">{$post.nb_views|intval}</span>
            </span>

            <div class="blog-post-short-description">
               {$post.content|escape:'htmlall':'UTF-8'|truncate:30:"...":true nofilter}
            </div>
        </div>*}

        {*<div class="blog-post-more">
            <a title="{$post.meta_title|escape:'htmlall':'UTF-8'}"
                href="{$bloglink->getBlogPostLink($post.id_post,$post.link_rewrite)|escape:'htmlall':'UTF-8'}"
                class="btn btn-default button button-small">

              <span>{l s='Read More' d='Modules.Asblog.Shop'}
                <i class="icon-chevron-right right"></i>
              </span>
            </a>
        </div>*}
    </div>
</div>
