<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title h6 text-sm-center" id="myModalLabel">
                {l s='Let\'s have a conversation about %product_name%'
                d='Modules.Hsrepaircontacting.Shop'
                sprintf=['%product_name%' => $product_name]
                }
            </h4>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-5 divide-right">
                    <p>{l s='Mail-only paragraph' d='Modules.Hsrepaircontacting.Shop'}</p>
                    <p>{l s='Talk about %product_name%'
                        d='Modules.Hsrepaircontacting.Shop'
                        sprintf=['%product_name%' => $product_name]
                        }
                    </p>
                </div>
                <div class="col-md-7">
                    <div class="cart-content" id="repair-form-content">
                        {include file='module:hs_repaircontacting/views/templates/widget/repair_contact_form.tpl'}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

