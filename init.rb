require 'redmine'

require_dependency 'redmine_rocketchat/listener'
require_dependency 'redmine_rocketchat/mail_handler_patch'

Redmine::Plugin.register :redmine_rocketchat do
	name 'Redmine Rocket.chat'
	author 'furylynx'
	url 'https://github.com/furylynx/redmine_rocketchat'
	description 'Rocket.chat chat integration'
	version '0.1.0'

	requires_redmine :version_or_higher => '2.0.0'

	settings \
		:default => {
			'callback_url' => 'http://example.com/callback/',
			'channel' => nil,
			'icon' => '',
			'username' => 'redmine',
			'display_watchers' => 'no',
			'auto_mentions' => 'yes',
			'new_include_description' => 'yes',
			'updated_include_description' => 'yes'
		},
		:partial => 'settings/rocketchat_settings'
end
