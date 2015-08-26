<?php

class Beforesendnotification_ext
{

	var $name = 'Send Notification Extension';
	var $version = '1.0';
	var $description = 'Alter user notifications before sending mail';
	var $settings_exist = 'n';
	var $docs_url = '';

	var $settings = array();

	/**
	 * Constructor 
	 *
	 * @param mixed Settings array or empty string if none exist
	 */	
	function __construct($settings='') 
	{
		$this->settings = $settings;
		ee()->load->dbforge();
	}
	// END

	/**
	 * Activate Extension
	 *
	 * This function enters the extension into the exp_extensions table
	 *
	 * @return void
	 */
	function activate_extension()
	{	
		$data = array(
			'class' => __CLASS__,
			'method' => 'before_send_notification',
			'hook' => 'freeform_module_user_notification',
			'settings' => serialize($this->settings),
			'priority' => 1,
			'version' => $this->version,
			'enabled' => 'y'
		);

		ee()->db->insert('extensions', $data);
	}

	/**
	 * Update Extension
	 *
	 * This function performs any necessary db updates when the extension page is visited
	 *
	 * @return mixed void on update/false if none
	 */
	function update_extension($current='')
	{
		if ($current == '' OR $current == $this->version) 
		{
			return FALSE;
		}

		if ($current < '1.0') 
		{
			# Update to version 1.0
		}

		ee()->db->where('class', __CLASS__);
		ee()->db->update(
			'extensions',
			array('version' => $this->version)
		);
	}

	/**
	 * Disable Extension
	 *
	 * This method removes information from the exp_extensions table
	 *
	 * @return void
	 */
	function disable_extension()
	{
		ee()->db->where('class', __CLASS__);
		ee()->db->delete('extensions');
	}

	function before_send_notification($fields, $e_id, $vars, $f_id, $obj) 
	{
		var_dump($_POST);exit();
	}
}
// END CLASS