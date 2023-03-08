{extends file='page.tpl'}

{block name='content'}
  <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 contact-section">
    <h2 class="h2 text-uppercase">
      <hr></hr>
      {l s='Contact us' d='Modules.Contactform.Shop'}
    </h2>
  </div>
  <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
    {widget name="contactform"}
  </div>
{/block}
