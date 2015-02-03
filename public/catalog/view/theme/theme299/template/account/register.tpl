<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="span12">
    <div class="warning"><?php echo $error_warning; ?></div>
  </div>
<?php } ?>
<div class="<?php if ($column_right) { ?>span9<?php } else {?>span12<?php } ?>">
	<div class="row">
<div class="<?php if ($column_left or $column_right) { ?>span9<?php } ?> <?php if ($column_left and $column_right) { ?>span6<?php } ?> <?php if (!$column_right and !$column_left) { ?>span12 <?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  
  <div class="box-container">
  <p><?php echo $text_account_already; ?></p>
	  <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register">
		<h2><?php echo $text_your_details; ?></h2>
		<div class="content">
		  <table class="form">      
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="firstname"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="firstname" value="<?php echo $firstname; ?>" />
							<?php if ($error_firstname) { ?>
							<span class="error help-inline"><?php echo $error_firstname; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="lastname"><span class="required">*</span> <?php echo $entry_lastname; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="lastname" value="<?php echo $lastname; ?>" />
							<?php if ($error_lastname) { ?>
							<span class="error help-inline"><?php echo $error_lastname; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="email"><span class="required">*</span> <?php echo $entry_email; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="email" value="<?php echo $email; ?>" />
							<?php if ($error_email) { ?>
							<span class="error help-inline"><?php echo $error_email; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="telephone"><span class="required">*</span> <?php echo $entry_telephone; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="telephone" value="<?php echo $telephone; ?>" />
							<?php if ($error_telephone) { ?>
							<span class="error help-inline"><?php echo $error_telephone; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="fax"><?php echo $entry_fax; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="fax" value="<?php echo $fax; ?>" />
						</div>
					</div>
				</td>
			</tr>
		  </table>
		</div>
		<h2><?php echo $text_your_address; ?></h2>
		<div class="content">
		  <table class="form">
			<tr>
			</tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="telephone"><?php echo $entry_company; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="company" value="<?php echo $company; ?>" />
						</div>
					</div>
				</td>
			<tr style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
				<td>
					<div class="control-group">
						<label class="control-label" for="customer_group_id"><?php echo $entry_customer_group; ?></label>
						<div class="controls">
							<?php foreach ($customer_groups as $customer_group) { ?>
							<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
							<label class="radio" for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>">
								<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
								<?php echo $customer_group['name']; ?>
							</label>
							<?php } else { ?>
							
							<label class="radio" for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>">
								<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
								<?php echo $customer_group['name']; ?>
							</label>
							<br />
							<?php } ?>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>        
			<tr id="company-id-display">
				<td>
					<div class="control-group">
						<label class="control-label" for="company_id"><span id="company-id-required" class="required">*</span> <?php echo $entry_company_id; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="company_id" value="<?php echo $company_id; ?>" />
							<?php if ($error_company_id) { ?>
							<span class="error help-inline"><?php echo $error_company_id; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr id="tax-id-display">
				<td>
					<div class="control-group">
						<label class="control-label" for="tax_id"><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
							<?php if ($error_tax_id) { ?>
							<span class="error help-inline"><?php echo $error_tax_id; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="address_1"><span class="required">*</span> <?php echo $entry_address_1; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="address_1" value="<?php echo $address_1; ?>" />
							<?php if ($error_address_1) { ?>
							<span class="error"><?php echo $error_address_1; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="address_2"><?php echo $entry_address_2; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="address_2" value="<?php echo $address_2; ?>" />
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="city"><span class="required">*</span> <?php echo $entry_city; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="city" value="<?php echo $city; ?>" />
							<?php if ($error_city) { ?>
							<span class="error help-inline"><?php echo $error_city; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="postcode"><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label>
						<div class="controls">
							<input class="q1" type="text" name="postcode" value="<?php echo $postcode; ?>" />
							<?php if ($error_postcode) { ?>
							<span class="error help-inline"><?php echo $error_postcode; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="country_id"><span class="required">*</span> <?php echo $entry_country; ?></label>
						<div class="controls">
							<select name="country_id">
							<option value=""><?php echo $text_select; ?></option>
							<?php foreach ($countries as $country) { ?>
							<?php if ($country['country_id'] == $country_id) { ?>
							<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
							<?php } ?>
							<?php } ?>
							</select>
							<?php if ($error_country) { ?>
							<span class="error help-inline"><?php echo $error_country; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="zone_id"><span class="required">*</span> <?php echo $entry_zone; ?></label>
						<div class="controls">
							<select name="zone_id">
							</select>
							<?php if ($error_zone) { ?>
							<span class="error help-inline"><?php echo $error_zone; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
		  </table>
		</div>
		<h2><?php echo $text_your_password; ?></h2>
		<div class="content">
		  <table class="form">
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="password"><span class="required">*</span> <?php echo $entry_password; ?></label>
						<div class="controls">
							<input class="q1" type="password" name="password" value="<?php echo $password; ?>" />
							<?php if ($error_password) { ?>
							<span class="error help-inline"><?php echo $error_password; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="confirm"><span class="required">*</span> <?php echo $entry_confirm; ?></label>
						<div class="controls">
							<input class="q1" type="password" name="confirm" value="<?php echo $confirm; ?>" />
							<?php if ($error_confirm) { ?>
							<span class="error help-inline"><?php echo $error_confirm; ?></span>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
		  </table>
		</div>
		<h2><?php echo $text_newsletter; ?></h2>
		<div class="content">
		  <table class="form">
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="newsletter"><?php echo $entry_newsletter; ?></label>
						<div class="controls">
							<?php if ($newsletter) { ?>
							<label class="radio inline">
								<input type="radio" name="newsletter" value="1" checked="checked" />
								<?php echo $text_yes; ?>
							</label>
							<label class="radio inline">
								<input type="radio" name="newsletter" value="0" />
								<?php echo $text_no; ?>
							</label>
							<?php } else { ?>
							<label class="radio inline">
								<input type="radio" name="newsletter" value="1" />
								<?php echo $text_yes; ?>
							</label>
							<label class="radio inline">
								<input type="radio" name="newsletter" value="0" checked="checked" />
								<?php echo $text_no; ?>
							</label>
							<?php } ?>
						</div>
					</div>
				</td>
			</tr>
		  </table>
		</div>
		<?php if ($text_agree) { ?>
		<div class="buttons">
		  <div class="right">
			<label class="checkbox inline" >
			
			<?php if ($agree) { ?>
			<input  type="checkbox" name="agree" value="1" checked="checked" />
			<?php } else { ?>
			<input type="checkbox" name="agree" value="1" />
			<?php } ?>
			<?php echo $text_agree; ?>
			</label>
			<a onclick="$('#register').submit();" class="button"><span><?php echo $button_continue; ?></span></a>
		  </div>
		</div>
		<?php } else { ?>
		<div class="buttons">
		  <div class="right">
			<a onclick="$('#register').submit();" class="button"><span><?php echo $button_continue; ?></span></a>
		  </div>
		</div>
		<?php } ?>
	  </form>
  </div>
  <?php echo $content_bottom; ?></div>
		<?php echo $column_left; ?>
	</div>
</div>
<?php echo $column_right; ?>

<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>   
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/theme299/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}
	
					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').fancybox({
		
	});
});
//--></script> 
<?php echo $footer; ?>