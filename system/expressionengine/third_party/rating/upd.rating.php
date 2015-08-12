<?php if ( ! defined('EXT')) exit('No direct script access allowed');

/**
 * Rating - Install/Uninstall/Update class
 *
 * In charge of the install, uninstall, and updating of the module.
 *
 * @package		Solspace:Rating
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2008-2015, Solspace, Inc.
 * @link		http://solspace.com/docs/rating
 * @license		http://www.solspace.com/license_agreement
 * @version		3.3.1
 * @filesource	rating/upd.rating.php
 */

require_once 'addon_builder/module_builder.php';

class Rating_upd extends Module_builder_rating
{

	public $module_actions	= array();
	public $hooks			= array();

	// --------------------------------------------------------------------

	/**
	 * Constructor
	 *
	 * @access	public
	 * @return	null
	 */

	public function __construct()
	{
		parent::__construct();

		// --------------------------------------------
		//  Module Actions
		// --------------------------------------------

		$this->module_actions = array(
			'insert_new_rating',
			'insert_rating_rev',
			'insert_new_comment',
			'unsubscribe'
		);

		// --------------------------------------------
		//  Extension Hooks
		// --------------------------------------------

		$this->default_settings = array();

		$this->hooks = array(
			array(
				'method'	=> 'modify_order_by_sql',
				'hook'		=> 'channel_module_alter_order',
				'priority'	=> 7
			),
			array(
				'method'	=> 'delete_entries_loop',
				'hook'		=> 'delete_entries_loop',
				'priority'	=> 5
			)
		);
	}
	// END Rating_updater_base()


	// --------------------------------------------------------------------

	/**
	 * Module Installer
	 *
	 * @access	public
	 * @return	bool
	 */

	public function install()
	{
		// Already installed, let's not install again.
		if ($this->database_version() !== FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Our Default Install
		// --------------------------------------------

		if ($this->default_module_install() == FALSE)
		{
			return FALSE;
		}

		// -------------------------------------
		//	demo rating items
		// -------------------------------------

		ee()->db->insert(
			'exp_rating_fields',
			array(
				'field_id'		=> 1,
				'field_name'	=> 'review',
				'field_label'	=> 'Review',
				'field_order'	=> '1',
				'field_type'	=> 'textarea',
				'field_maxl'	=> '1'
			)
		);

		ee()->db->insert(
			'exp_rating_fields',
			array(
				'field_id'		=> 2,
				'field_name'	=> 'rating',
				'field_label'	=> 'Rating',
				'field_order'	=> '2',
				'field_type'	=> 'number',
				'field_maxl'	=> '10'
			)
		);

		ee()->db->insert(
			'exp_rating_templates',
			array(
				'template_name'		=>'default_template',
				'template_label'	=>'Default Template',
				'subject'			=>'Someone has posted a rating',
				'message'			=>'Someone has posted a rating.\n\nHere are the details:\nEntry Date: {entry_date} {all_custom_fields}'
			)
		);

		// --------------------------------------------
		//  Module Install
		// --------------------------------------------

		ee()->db->insert(
			'exp_modules',
			array(
				'module_name'		=> $this->class_name,
				'module_version'	=> RATING_VERSION,
				'has_cp_backend'	=> 'y'
			)
		);

		return TRUE;
	}
	// END install()


	// --------------------------------------------------------------------

	/**
	 * Module Uninstaller
	 *
	 * @access	public
	 * @return	bool
	 */

	public function uninstall()
	{
		// Cannot uninstall what does not exist, right?
		if ($this->database_version() === FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Default Module Uninstall
		// --------------------------------------------

		if ($this->default_module_uninstall() == FALSE)
		{
			return FALSE;
		}

		// --------------------------------------------
		//	Massive Clean Up for Versions Prior to Rating 3.0.0
		// --------------------------------------------

		ee()->db->query("DROP TABLE IF EXISTS `exp_rating_cache`");

		$remove = array(
			'exp_stats'						=> array(
				'total_ratings',
				'last_rating_date'
			),
			'exp_members'					=> array(
				'total_ratings',
				'last_rating_date'
			),
			'exp_member_homepage'			=> array(
				'recent_ratings',
				'recent_ratings_order'
			),
			$this->sc->db->channel_titles	=> array(
				'allow_ratings',
				'recent_rating_date',
				'rating_total',
				'rating_avg',
				'rating_count'
			),
			$this->sc->db->channels			=> array(
				'total_ratings',
				'last_rating_date',
				'deft_ratings',
				'rating_system_enabled',
				'rating_require_membership',
				'rating_use_captcha',
				'rating_moderate',
				'rating_max_chars',
				'rating_timelock',
				'rating_quarantine',
				'rating_require_email',
				'rating_text_formatting',
				'rating_html_formatting',
				'rating_allow_img_urls',
				'rating_auto_link_urls',
				'rating_notify',
				'rating_notify_authors',
				'rating_notify_emails'
			),
			'exp_member_groups'				=> array(
				'can_view_other_ratings',
				'can_edit_own_rating',
				'can_delete_own_ratings',
				'can_edit_all_ratings',
				'can_delete_all_ratings',
				'can_moderate_ratings',
				'can_quarantine_ratings',
				'can_post_ratings'
			)
		);


		foreach($remove as $table => $fields)
		{
			foreach($fields as $field)
			{
				if (ee()->db->field_exists($field, $table))
				{
					ee()->db->query("ALTER TABLE `{$table}` DROP `{$field}`");
				}
			}
		}

		return TRUE;
	}
	// END uninstall()


	// --------------------------------------------------------------------

	/**
	 * Module Updater
	 *
	 * @access	public
	 * @return	bool
	 */

	public function update($current = '')
	{
		if ($current == $this->version && $this->extensions_enabled())
		{
			return FALSE;
		}

		// --------------------------------------------
		//  Default Module Update
		// --------------------------------------------

		$this->default_module_update();

		// --------------------------------------------
		//  Adding in a dedicated Rating Preferences table
		//  - Added: 3.0.0.d5
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d5'))
		{
			ee()->db->query(
				"CREATE TABLE IF NOT EXISTS `exp_rating_preferences` (
					`preference_id`			int(10) unsigned		NOT NULL AUTO_INCREMENT,
					`preference_name`		varchar(100)			NOT NULL DEFAULT '',
					`preference_value`		varchar(100)			NOT NULL DEFAULT '',
					PRIMARY KEY (`preference_id`)
				)");
		}

		// --------------------------------------------
		//  Removing unused fields from the exp_rating_fields table
		//  - Added: 3.0.0.d8 (2011-01-16)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d8'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`weblog_id`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`field_name_old`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`field_type_old`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`field_ta_rows`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`field_required`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_fields`
				 DROP			`field_show_fmt`"
			);
		}

		// --------------------------------------------
		//	Renaming Fields in exp_rating_templates
		//	- Added: 3.0.0.d10 (2011-01-18)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d10'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_templates`
				CHANGE			`data_title`
								`subject` VARCHAR( 80 ) NOT NULL DEFAULT ''"
			);

			ee()->db->query(
				"ALTER TABLE	`exp_rating_templates`
				CHANGE			`template_data`
								`message` text"
			);
		}

		// --------------------------------------------
		//	Remove Stats from exp_weblog_titles as they already exist in exp_rating_stats
		//	- Added: 3.0.0.d11 (2011-01-20)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d11'))
		{
			if (ee()->db->field_exists('allow_ratings', $this->sc->db->channel_titles))
			{
				$fields = array(
					'allow_ratings',
					'recent_rating_date',
					'rating_total',
					'rating_avg',
					'rating_count'
				);

				foreach($fields as $field)
				{
					ee()->db->query(
						"ALTER TABLE	{$this->sc->db->channel_titles}
						 DROP			{$field}"
					);
				}
			}
		}

		// --------------------------------------------
		//	Find and Remove Preferences from exp_weblogs
		//	- Added: 3.0.0.d12 (2011-01-20)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d12'))
		{
			if (ee()->db->field_exists('rating_system_enabled', $this->sc->db->channels))
			{
				$fields = array(
					'deft_ratings',
					'rating_system_enabled',
					'rating_require_membership',
					'rating_use_captcha',
					'rating_moderate',
					'rating_max_chars',
					'rating_timelock',
					'rating_quarantine',
					'rating_require_email',
					'rating_text_formatting',
					'rating_html_formatting',
					'rating_allow_img_urls',
					'rating_auto_link_urls',
					'rating_notify',
					'rating_notify_authors',
					'rating_notify_emails'
			);

				// We want to have these values so that we insert
				// them into our exp_rating_preferences table
				// rating_quarantine, rating_system_enabled,
				// rating_require_email, rating_use_captcha

				$query = ee()->db->query(
					"SELECT {$this->sc->db->channel_id},
							rating_quarantine,
							rating_system_enabled,
							rating_require_email,
							rating_use_captcha
					FROM	{$this->sc->db->channels}");

				$preferences = array(
					'enabled_channels'			=> array(),
					'quarantine_minimum'		=> 3,
					'require_email'				=> 'n',
					'use_captcha'				=> 'n'
				);

				foreach($query->result_array() as $row)
				{
					if ($row['rating_quarantine'] > $preferences['quarantine_minimum'])
					{
						$preferences['quarantine_minimum'] = $row['rating_quarantine'];
					}

					if ($row['rating_require_email'] == 'y')
					{
						$preferences['require_email'] = 'y';
					}

					if ($row['rating_use_captcha'] == 'y')
					{
						$preferences['use_captcha'] = 'y';
					}

					if ($row['rating_system_enabled'] == 'y')
					{
						$preferences['enabled_channels'][] = $row[$this->sc->db->channel_id];
					}
				}

				$preferences['enabled_channels'] = implode('|', $preferences['enabled_channels']);

				// ----------------------------------
				//	Insert Rating Preferences
				// ----------------------------------

				$inserts = array();

				foreach(explode('|', RATING_PREFS) as $field)
				{
					$inserts[] = array(
						'preference_name'	=> $field,
						'preference_value'	=> (
							isset($preferences[$field])
						) ? $preferences[$field] : '');
				}

				ee()->db->query("TRUNCATE exp_rating_preferences");

				foreach($inserts as $insert)
				{
					ee()->db->insert('exp_rating_preferences', $insert);
				}

				// --------------------------------------------
				//	Delete the Pesky exp_weblogs Fields
				// --------------------------------------------

				foreach($fields as $field)
				{
					ee()->db->query(
						"ALTER TABLE	{$this->sc->db->channels}
						 DROP			{$field}"
					);
				}
			}
		}

		// --------------------------------------------
		//  Change Rating DB Structure to have EE 2.x Naming
		//	 Add Missing Indexes
		//		- Added: 3.0.0.d13 (2011-01-20)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d13'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_quarantine`
				 CHANGE			`weblog_id`
				 				`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_rev`
				 CHANGE			`weblog_id`
				 				`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_stats`
				 CHANGE			`weblog_id`
				 				`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 CHANGE			`weblog_id`
				 				`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_comments`
				 CHANGE			`weblog_id`
				 				`channel_id` smallint(3) unsigned NOT NULL DEFAULT 0"
			);

			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 ADD INDEX		(`channel_id`)"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_quarantine`
				 ADD INDEX		(`channel_id`)"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_rev`
				 ADD INDEX		(`channel_id`)"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_stats`
				 ADD INDEX		(`channel_id`)"
			);

			// Never used
			ee()->db->query(
				"ALTER TABLE	exp_ratings
				 DROP			entry_title"
			);
		}

		// --------------------------------------------
		//  Find and Remove Rating Stats from exp_weblogs and move to exp_rating_stats
		//  Find and Remove Rating Stats from exp_members and move to exp_rating_stats
		//		- Added: 3.0.0.d14 (2011-01-20)
		// --------------------------------------------


		if ($this->version_compare($this->database_version(), '<', '3.0.0.d14'))
		{
			// --------------------------------------------
			//	Create Channel Stats
			// --------------------------------------------

			if (ee()->db->field_exists('total_ratings', $this->sc->db->channels))
			{
				$query = ee()->db->query(
					"SELECT {$this->sc->db->channel_id},
							total_ratings,
							last_rating_date
					 FROM	{$this->sc->db->channels}"
				);

				foreach($query->result_array() as $row)
				{
					$result = ee()->db->query(
						"SELECT	SUM(`count`) AS count_sum,
								SUM(`sum`) AS sum_sum
						 FROM	exp_rating_stats
						 WHERE	channel_id = '".$row[$this->sc->db->channel_id]."'"
					);

					$result_row = $result->row_array();

					ee()->db->insert(
						'exp_rating_stats',
						array(
							'entry_id'		=> 0,
							'channel_id'	=> $row[$this->sc->db->channel_id],
							'form_name'		=> 'all',
							'sum'			=> $row['total_ratings'],
							'rating_date'	=> $row['last_rating_date'],
							'count'			=> empty($result_row['count_sum']) ?
												0 : $result_row['count_sum'],
							'sum'			=> empty($result_row['sum_sum']) ?
												0 : $result_row['sum_sum'],
							'avg'			=> empty($result_row['count_sum']) ?
												0 : ($result_row['sum_sum']/$result_row['count_sum'])
						)
					);
				}

				ee()->db->query(
					"ALTER TABLE	{$this->sc->db->channels}
					 DROP			total_ratings"
				);
				ee()->db->query(
					"ALTER TABLE	{$this->sc->db->channels}
					 DROP			last_rating_date"
				);
			}

			// --------------------------------------------
			//	Create Member Stats
			// --------------------------------------------

			if (ee()->db->field_exists('total_ratings', 'exp_members'))
			{
				ee()->db->query(
					"ALTER TABLE	`exp_rating_stats`
					 ADD			`member_id` int unsigned NOT NULL DEFAULT 0
					 AFTER			`channel_id`,
					 ADD INDEX		(`member_id`)"
				);

				$query = ee()->db->query(
					"SELECT DISTINCT	member_id,
										total_ratings,
										last_rating_date
					FROM				exp_members
					WHERE				total_ratings != 0"
				);

				foreach($query->result_array() as $row)
				{
					ee()->db->insert(
						'exp_rating_stats',
						array(
							'entry_id'		=> 0,
							'channel_id'	=> 0,
							'member_id'		=> $row['member_id'],
							'form_name'		=> 'all',
							'rating_date'	=> $row['last_rating_date'],
							'count'			=> $row['total_ratings']
						)
					);

				}

				ee()->db->query(
					"ALTER TABLE	exp_members
					 DROP			total_ratings"
				);
				ee()->db->query(
					"ALTER TABLE	exp_members
					 DROP			last_rating_date"
				);
			}
		}

		// --------------------------------------------
		//	Find and Remove Old Rating Preferences from exp_member_groups and combine with those in exp_rating_preferences
		//	- Added: 3.0.0.d15 (2011-01-22)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d15'))
		{
			if (ee()->db->field_exists('can_post_ratings', 'exp_member_groups'))
			{
				$data = array(
					'can_delete_ratings' 		=> array(),
					'can_quarantine_ratings'	=> array(),
					'can_post_ratings'			=> array()
				);

				// --------------------------------------------
				//	Find Current Preference Values, if Any
				// --------------------------------------------

				$query = ee()->db->query(
					"SELECT preference_name, preference_value
					 FROM	exp_rating_preferences
					 WHERE	preference_name
					 IN		('can_delete_ratings', 'can_quarantine_ratings', 'can_post_ratings')"
				);

				foreach($query->result_array() as $row)
				{
					$data[$row['preference_name']] = explode('|', $row['preference_value']);
				}

				// --------------------------------------------
				//	Find Old Preference Values from exp_member_groups, Add to Current in $data
				// --------------------------------------------

				$query = ee()->db->query(
					"SELECT		group_id,
								can_delete_all_ratings,
								can_quarantine_ratings,
								can_post_ratings
					 FROM		exp_member_groups"
				);

				foreach($query->result_array() as $row)
				{
					foreach($row as $key => $value)
					{
						// If the old preference is set to 'y',
						// we include the group_id in the new preference
						if ($key !=  'group_id' && $value == 'y')
						{
							// Remove 'all_' for can_delete_all_ratings
							$data[str_replace('all_', '', $key)][] = $row['group_id'];
						}
					}
				}

				// --------------------------------------------
				//	Delete Current Preferences, Put in Combination of Old/Current Preferences
				// --------------------------------------------

				foreach($data as $preference => $value)
				{
					ee()->db->query(
						"DELETE FROM	exp_rating_preferences
						 WHERE			preference_name = '" .
							ee()->db->escape_str($preference)."'"
					);

					ee()->db->insert(
						'exp_rating_preferences',
						array(
							'preference_name'	=> $preference,
							'preference_value'	=> implode('|', array_unique($value))
						)
					);
				}

				// --------------------------------------------
				//	Remove Those Old Fields from exp_member_groups
				// --------------------------------------------

				$fields = array(
					'can_view_other_ratings',
					'can_edit_own_rating',
					'can_delete_own_ratings',
					'can_edit_all_ratings',
					'can_delete_all_ratings',
					'can_moderate_ratings',
					'can_quarantine_ratings',
					'can_post_ratings'
				);

				foreach($fields as $field)
				{
					ee()->db->query(
						"ALTER TABLE	exp_member_groups
						 DROP			`{$field}`"
					);
				}
			}
		}

		// --------------------------------------------
		//	Renaming fields rating_rev_r, rating_rev_r_y, and rating_rev_r_n to meaninful values.
		//	- Added: 3.0.0.d16 (2011-01-22)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d16'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_rev`
				 CHANGE			`rating_rev_r`
				 				`rating_helpful`	char(1) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 CHANGE			`rating_rev_r_y`
				 				`rating_helpful_y`	int(10) NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 CHANGE			`rating_rev_r_n`
				 				`rating_helpful_n`	int(10) NOT NULL DEFAULT 0"
			);
		}

		// --------------------------------------------
		//	Renaming exp_rating_stats.rating_date to
		//	last_rating_date because it BUGS me that it is not specific
		//	- Added: 3.0.0.d17 (2011-01-23)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d17'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_stats`
				 CHANGE			`rating_date`
								`last_rating_date`	int(10) UNSIGNED NOT NULL DEFAULT 0"
			);
		}

		// --------------------------------------------
		//	The Rating parameter database table needed
		//	a random hash instead of using the param_id.
		//	Better security
		//	- Added: 3.0.0.d18 (2011-01-27)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d18'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_params`
				 ADD			`hash` varchar(25) NOT NULL DEFAULT ''
				 AFTER			`date`,
				 ADD INDEX		(`hash`)"
			);
		}

		// --------------------------------------------
		//	If a form_name="" is empty, let's actually
		//	make the DB field value an empty string
		//	instead of 'empty'
		//	- Added: 3.0.0.d20 (2011-02-03)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d20'))
		{
			ee()->db->query(
				"UPDATE		exp_ratings
				 SET		form_name = ''
				 WHERE		form_name = 'empty'"
			);
			ee()->db->query(
				"DELETE FROM	exp_rating_stats
				 WHERE			form_name = 'empty'"
			);
		}

		// --------------------------------------------
		//	The Rating Reviews table was named rather terribly
		//	- Added: 3.0.0.d21 (2011-03-04)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d21'))
		{
			ee()->db->query(
				"RENAME TABLE	`exp_rating_rev`
				 TO				`exp_rating_reviews`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_reviews`
				 CHANGE			`rev_id`
								`review_id` int(10) unsigned NOT NULL AUTO_INCREMENT"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_reviews`
				 CHANGE			`rating_rev_date`
								`review_date` int(20) NULL DEFAULT NULL"
			);
		}

		// --------------------------------------------
		//	Rating Reviews table needed an index on author_id
		//	- Added: 3.0.0.d22 (2011-03-04)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d22'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_reviews`
				 ADD INDEX		(`author_id`)"
			);
		}

		// --------------------------------------------
		//	Changing the name of Quaratine/Quaratine Allowed to Report/Reporting Allowed
		//	- Added: 3.0.0.d24 (2011-03-19)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d24'))
		{
			ee()->db->query(
				"UPDATE		exp_rating_preferences
				 SET		preference_name = 'can_report_ratings'
				 WHERE		preference_name = 'can_quarantine_ratings'"
			);
		}

		// --------------------------------------------
		//	Just one more field name change, I swear...
		//	- Added: 3.0.0.d25 (2011-03-19)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d25'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_rating_reviews`
				 CHANGE			`rating_rev`
								`rating_review`	TEXT"
			);
		}

		// --------------------------------------------
		//	Remove the exp_rating_comments table.  BEGONE!
		//	- Added: 3.0.0.d26 (2011-03-19)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.d26'))
		{
			ee()->db->query(
				"DROP TABLE IF EXISTS `exp_rating_comments`"
			);
		}

		// --------------------------------------------
		//	Renaming the 'form_name' fields to 'collection'
		//	because of the parameter change
		//	- Added: 3.0.0.b5 (2011-04-12)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.0.0.b5'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 CHANGE			`form_name`
				 				`collection` varchar(50) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_rating_stats`
				 CHANGE			`form_name`
				 				`collection` varchar(50) NOT NULL DEFAULT ''"
			);
		}

		// --------------------------------------------
		//	Allowing Ratings to be Rated Themselves - Future Feature
		//	- Added: 3.1.0.d1 (2011-10-28)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.0.d1'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 ADD			`rated_rating_id` int(10) unsigned NOT NULL DEFAULT 0
				 AFTER			`rating_id`"
			);
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 ADD			INDEX (`rated_rating_id`)"
			);
		}

		// --------------------------------------------
		//	Flag to Indicate if Rating is a Duplicate
		//	Update all Ratings with a Rating of 0 to be a Duplicate
		//	- Added: 3.1.0.d2 (2011-10-28)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.0.d2'))
		{
			ee()->db->query(
				"ALTER TABLE	`exp_ratings`
				 ADD			`duplicate`	CHAR(1) NOT NULL DEFAULT 'n'"
			);
			ee()->db->query(
				"UPDATE			`exp_ratings`
				 SET			`duplicate` = 'y'
				 WHERE			`rating` = 0"
			);
		}

		// --------------------------------------------
		//	Numeric Rating Fields Need NULL as Possiblitiy
		//	- Added: 3.1.0.d9 (2011-10-29)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.0.d9'))
		{
			foreach(array('count', 'sum', 'avg') as $name)
			{
				$type = ($name == 'avg') ? 'FLOAT' : 'INT';

				$e_name = ee()->db->escape_str($name);

				ee()->db->query(
					"ALTER TABLE	exp_rating_stats
					 CHANGE			`{$e_name}`
									`{$e_name}` {$type} unsigned NULL DEFAULT NULL"
				);

				ee()->db->query(
					"UPDATE			`exp_rating_stats`
					 SET			`{$e_name}` = NULL
					 WHERE			`{$e_name}` = 0");
			}


			$query = ee()->db->query(
				"SELECT		field_name,
							field_id,
							field_type,
							field_maxl
				FROM		exp_rating_fields"
			);

			foreach($query->result_array() as $row)
			{
				// --------------------------------------------
				//  All of the Stat Fields need to be updated,
				//  as 0 no long indicates empty. NULL!!
				// --------------------------------------------

				foreach(array('count', 'sum', 'avg') as $name)
				{
					$type = ($name == 'avg') ? 'FLOAT' : 'INT';

					$e_name = ee()->db->escape_str( $name.'_'.$row['field_id']);

					ee()->db->query(
						"ALTER TABLE	exp_rating_stats
						CHANGE			`{$e_name}`
										`{$e_name}` {$type} unsigned NULL DEFAULT NULL"
					);

					ee()->db->query(
						"UPDATE `exp_rating_stats`
						SET		`{$e_name}` = NULL
						WHERE	`{$e_name}` = 0"
					);
				}

				// --------------------------------------------
				//  All of the Number Fields need to be
				//  switched over to NULL from 0
				// --------------------------------------------

				if ($row['field_type'] == 'number')
				{
					if ( $row['field_maxl'] < 3 )
					{
						$field_type	= "tinyint unsigned NULL DEFAULT NULL";
					}
					else
					{
						$field_type	= "int unsigned NULL DEFAULT NULL";
					}

					$f_name = ee()->db->escape_str($row['field_name']);

					ee()->db->query(
						"ALTER TABLE	exp_ratings
						 CHANGE			`{$f_name}`
						 				`{$f_name}` " . $field_type
					);

					ee()->db->query(
						"UPDATE `exp_ratings`
						 SET	`{$f_name}` = NULL
						 WHERE	`{$f_name}` = 0"
					);
				}
			}
		}

		// --------------------------------------------
		//	MySQL Strict Changes
		//	- Added: 3.1.0.d10 (2011-11-05)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.0.d10'))
		{
			// @todo - Change rating field creation too

			// exp_ratings table
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`channel_id`
				 					`channel_id` int(4) unsigned NOT NULL DEFAULT 0"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`quarantine`
				 					`quarantine` char(1) NOT NULL DEFAULT 'n'"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`collection`
				 					`collection` varchar(50) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`name`
				 					`name` varchar(50) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`email`
				 					`email` varchar(50) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`url`
				 					`url` varchar(75) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`location`
				 					`location` varchar(50) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`ip_address`
				 					`ip_address` varchar(16) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`rating_review`
				 					`rating_review` text"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 CHANGE				`review`
				 					`review` text"
			);

			// exp_rating_cache
			ee()->db->query(
				"ALTER TABLE		`exp_rating_cache`
				 CHANGE				`array`
				 					`array` text"
			);

			// exp_rating_fields
			ee()->db->query(
				"ALTER TABLE		`exp_rating_fields`
				 CHANGE				`field_list_items`
				 					`field_list_items` text"
			);

			ee()->db->query(
				"ALTER TABLE		`exp_rating_fields`
				 CHANGE				`field_order`
				 					`field_order` int(3) unsigned NOT NULL DEFAULT 1"
			);

			// exp_rating_notification_log
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`recipient`
			 						`recipient` text"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`cc`
			 						`cc` text"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`bcc`
			 						`bcc` text"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`recipient_array`
			 						`recipient_array` mediumtext"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`message`
			 						`message` mediumtext"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`plaintext_alt`
			 						`plaintext_alt` mediumtext"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`mailtype`
			 						`mailtype` varchar(6) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_notification_log`
				 CHANGE				`text_fmt`
			 						`text_fmt` varchar(40) NOT NULL DEFAULT ''"
			);

			// exp_rating_params
			ee()->db->query(
				"ALTER TABLE		`exp_rating_params`
				 CHANGE				`hash`
			 						`hash` varchar(25) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_params`
				 CHANGE				`data`
			 						`data` text"
			);

			// exp_rating_quarantine
			ee()->db->query(
				"ALTER TABLE		`exp_rating_quarantine`
				 CHANGE				`channel_id`
			 						`channel_id` int(4) unsigned NOT NULL DEFAULT 0"
			);

			// exp_rating_reviews
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 CHANGE				`ip_address`
			 						`ip_address` varchar(16) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 CHANGE				`rating_helpful`
			 						`rating_helpful` char(1) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 CHANGE				`rating_review`
			 						`rating_review` text"
			);

			// exp_rating_stats
			ee()->db->query(
				"ALTER TABLE		`exp_rating_stats`
				 CHANGE				`collection`
				 					`collection` varchar(50) NOT NULL DEFAULT ''"
			);

			// exp_rating_templates
			ee()->db->query(
				"ALTER TABLE		`exp_rating_templates`
				 CHANGE				`subject`
				 					`subject` varchar(80) NOT NULL DEFAULT ''"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_templates`
				 CHANGE				`message`
				 					`message` text"
			);
		}

		// --------------------------------------------
		//  Add capability to comment on ratings / reviews
		//  - Added: 3.1.2 (2012-05-25)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.2'))
		{
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 ADD				`site_id` int(4) unsigned NOT NULL DEFAULT 1
				 AFTER				review_id"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 ADD				`location` varchar(50) NOT NULL DEFAULT ''
				 AFTER				status"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 ADD				`url` varchar(75) NOT NULL DEFAULT ''
				 AFTER				status"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 ADD				`email` varchar(50) NOT NULL DEFAULT ''
				 AFTER				status"
			);
			ee()->db->query(
				"ALTER TABLE		`exp_rating_reviews`
				 ADD				`name` varchar(50) NOT NULL DEFAULT ''
				 AFTER				status"
			);
		}

		// --------------------------------------------
		//  Add sticky capability to ratings
		//  - Added: 3.1.3 (2012-07-09)
		// --------------------------------------------

		if ($this->version_compare($this->database_version(), '<', '3.1.3'))
		{
			ee()->db->query(
				"ALTER TABLE		`exp_ratings`
				 ADD				`sticky` char(1) NOT NULL DEFAULT 'n'
				 AFTER				duplicate"
			);
		}

		// --------------------------------------------
		//  Version Number Update - LAST!
		// --------------------------------------------

		ee()->db->update(
			'exp_modules',
			array('module_version'	=> RATING_VERSION),
			array('module_name'		=> $this->class_name)
		);

		return TRUE;
	}
	// END update()
}
// END Class Rating_upd
