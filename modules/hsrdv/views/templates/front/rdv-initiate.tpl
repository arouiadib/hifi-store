{extends file='page.tpl'}

{block name='content_wrapper'}
    <div class="row">
        <div class="col-md-5" id="help-video">

        </div>
        <div class="col-md-5" id="rdv-form-content">
            <h1>{l s='Faire une demande de réparation' d='Modules.Hsrdv.Shop'}</h1>
            {include file='module:hsrdv/views/templates/front/rdv-form.tpl'}
        </div>
    </div>
{/block}