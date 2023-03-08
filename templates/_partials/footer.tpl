<div class="footer-container">
  <div class="container-fluid no-padding">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      <div class="col-md-12">
        <p class="copyright text-xs-center">
          {block name='copyright_link'}
            <a class="_blank" href="#" target="_blank">
              {l s='%copyright% 2014-%year% - made by %prestashop%' sprintf=['%prestashop%' => 'HiFi Store Paris™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
            </a>
          {/block}
        </p>
      </div>
    </div>
  </div>
</div>
