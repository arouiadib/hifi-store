{assign "situation" "homepage"}
{if $urls.pages.contact === $urls.current_url}
    {$situation = "contactpage"}
{/if}
{if $urls.pages.index === $urls.current_url}
    {$situation = "homepage"}
{/if}

<section id="contact-form" class="contact-form-{$situation}">
  <form action="{$urls.pages.contact}" method="post">

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
      <section class="form-fields">

        <div class="form-group row">
          <label class="form-control-label">{l s='Subject' d='Shop.Forms.Labels'}</label>
          <div class="col-md-12">
            <select name="id_contact" class="form-control form-control-select">
                {foreach from=$contact.contacts item=contact_elt}
                    {if $contact_elt.id_contact == 3}
                      <option value="{$contact_elt.id_contact}" selected="selected">{$contact_elt.name}</option>
                    {/if}
                {/foreach}
                {foreach from=$contact.contacts item=contact_elt}
                    {if $contact_elt.id_contact != 3}
                      <option value="{$contact_elt.id_contact}">{$contact_elt.name}</option>
                    {/if}
                {/foreach}
            </select>
          </div>
        </div>

        <div class="form-group row">
          <label class="form-control-label">{l s='Email address' d='Shop.Forms.Labels'}</label>
          <div class="col-md-12">
            <input
              class="form-control"
              name="from"
              type="email"
              value="{$contact.email}"
              placeholder="{l s='your@email.com' d='Shop.Forms.Help'}"
            >
          </div>
        </div>

        {if $contact.orders}
          <div class="form-group row">
            <label class="form-control-label">{l s='Order reference' d='Shop.Forms.Labels'}</label>
            <div class="col-md-12">
              <select name="id_order" class="form-control form-control-select">
                <option value="">{l s='Select reference' d='Shop.Forms.Help'}</option>
                {foreach from=$contact.orders item=order}
                  <option value="{$order.id_order}">{$order.reference}</option>
                {/foreach}
              </select>
            </div>
            <span class="col-md-3 form-control-comment">
              {l s='optional' d='Shop.Forms.Help'}
            </span>
          </div>
        {/if}

        <div class="form-group row">
          <label class="form-control-label">{l s='Message' d='Shop.Forms.Labels'}</label>
          <div class="col-md-12">
            <textarea
              class="form-control"
              name="message"
              placeholder="{l s='How can we help?' d='Shop.Forms.Help'}"
              {if $situation === "homepage"}
                rows="14"
              {else}
                rows="6"
              {/if}
            >{if $contact.message}{$contact.message}{/if}</textarea>
          </div>
        </div>

        {if isset($id_module)}
          <div class="form-group row">
            <div class="offset-md-3">
              {hook h='displayGDPRConsent' id_module=$id_module}
            </div>
          </div>
        {/if}

      </section>

      <footer class="form-footer text-xs-center">
        <style>
          input[name=url] {
            display: none !important;
          }
        </style>
        <input type="text" name="url" value=""/>
        <input type="hidden" name="token" value="{$token}" />
        <input class="btn btn-primary" type="submit" name="submitMessage" value="{l s='Send' d='Shop.Theme.Actions'}">
      </footer>
    {/if}

  </form>
</section>
