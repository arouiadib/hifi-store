<br />
{if $status == 'ok'}
		{l s='Your check must include:' d='Modules.Checkpayment.Shop'}
		<br />- {l s='Payment amount.' d='Modules.Checkpayment.Shop'} <span class="price"><strong>{$total_to_pay}</strong></span>
		<br />- {l s='Payable to the order of' d='Modules.Checkpayment.Shop'} <strong>{if $checkName}{$checkName}{else}___________{/if}</strong>
		<br />- {l s='Mail to' d='Modules.Checkpayment.Shop'} <strong>{if $checkAddress}{$checkAddress}{else}___________{/if}</strong>
		{if !isset($reference)}
			<br />- {l s='Do not forget to insert your order number #%d.' sprintf=[$id_order] d='Modules.Checkpayment.Shop'}
		{else}
			<br />- {l s='Do not forget to insert your order reference %s.' sprintf=[$reference] d='Modules.Checkpayment.Shop'}
		{/if}
		<br />
		<br />{l s='An email has been sent to you with this information.' d='Modules.Checkpayment.Shop'}
		<br /><strong>{l s='Your order will be sent as soon as we receive your payment.' d='Modules.Checkpayment.Shop'}</strong>
		<br />{l s='For any questions or for further information, please contact our' d='Modules.Checkpayment.Shop'} <a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='customer service department.' d='Modules.Checkpayment.Shop'}</a>.
	</p>
{else}
	<p class="warning">
		{l s='We have noticed that there is a problem with your order. If you think this is an error, you can contact our' d='Modules.Checkpayment.Shop'}
		<a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='customer service department.' d='Modules.Checkpayment.Shop'}</a>.
	</p>
{/if}
