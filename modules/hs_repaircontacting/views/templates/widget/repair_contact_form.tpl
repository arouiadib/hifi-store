<section class="repair-contact-form container">
    <div class="row">
            <form action="{$repair_form_action_link}" method="post" data-link-action="repair-product">
                {if $notifications}
                    <div class="col-xs-12 alert {if $notifications.nw_error}alert-danger{else}alert-success{/if}">
                        <ul>
                            {foreach $notifications.messages as $notif}
                                <li>{$notif}</li>
                            {/foreach}
                        </ul>
                    </div>
                {/if}

                {if !$notifications || $notifications.nw_error}
                    <section class="form-fields container">
                        <div class="form-group row">
                            <label class="col-md-3 form-control-label">{l s='Email address' d='Shop.Forms.Labels'}*</label>
                            <div class="col-md-6">
                                <input
                                        class="form-control"
                                        name="from"
                                        type="email"
                                        value="{$contact.email}"
                                        placeholder="{l s='your@email.com' d='Shop.Forms.Help'}"
                                >
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 form-control-label">{l s='Message' d='Shop.Forms.Labels'}</label>
                            <div class="col-md-9">
                            <textarea
                                    class="form-control"
                                    name="message"
                                    placeholder="{l s='How can we help?' d='Shop.Forms.Help'}"
                                    rows="6"
                            >{if $contact.message}{$contact.message}{/if}</textarea>
                            </div>
                        </div>
                    </section>

                    <footer class="form-footer container">
                        <style>
                            input[name=url] {
                                display: none !important;
                            }
                        </style>
                        <input type="hidden" name="id_contact" value="{$id_contact}" />
                        <input type="hidden" name="id_product" value="{$id_product}" />
                        <input type="hidden" name="token" value="{$token}" />
                        <input class="btn btn-primary" name="submitMessage" data-button-action="repairForm"
                               value="{l s='Send' d='Modules.Hsrepaircontacting.Shop'}" type="submit">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            {l s='Annuler' d='Modules.Hsrepaircontacting.Shop'}
                        </button>
                    </footer>
                {/if}
            </form>
</section>