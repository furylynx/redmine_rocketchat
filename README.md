# Rocket.chat chat plugin for Redmine

This plugin posts updates to issues in your Redmine installation to a Rocket.chat
channel.

Redmine Supported versions: 2.0.x - 3.2.x.

## Screenshot

![screenshot](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/screenshot.png)

## Installation

From your Redmine plugins directory, clone this repository as `redmine_rocketchat` (note
the underscore!):

    git clone https://github.com/furylynx/redmine_rocketchat.git redmine_rocketchat

You will also need the `httpclient` dependency, which can be installed by running

    bundle install

from the plugin directory.

Restart Redmine, and you should see the plugin show up in the Plugins page.
Under the configuration options, set the Rocket.chat API URL to the URL for an
Incoming WebHook integration in your Rocket.chat account (see also the next two sections).

## Customized Routing

You can also route messages to different channels on a per-project basis. To
do this, create a project custom field (Administration > Custom fields > Project)
named `Rocketchat Channel`. If no custom channel is defined for a project, the parent
project will be checked (or the default will be used). To prevent all notifications
from being sent for a project, set the custom channel to `-`.

For more information, see http://www.redmine.org/projects/redmine/wiki/Plugins (see also next section for an easy configuration demonstration).

## Screenshot Guided Configuration

Step 1: Create an Incoming Webhook in Rocket.chat (Account Settings > Integrations > Incoming Webhooks).

![step1](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/step1.png)

Step 2: Install this Redmine plugin for Rocket.chat.


    git clone https://github.com/furylynx/redmine_rocketchat.git redmine_rocketchat
    bundle install



Step 3: Configure this Redmine plugin for Rocket.chat. For per-project customized routing, leave the `Rocket.chat Channel` field empty and follow the next steps, otherwise all Redmine projects will post to the same Rocket.chat channel. Be careful when filling the channel field, you need to input the channel's handle, not the display name visible to users. You can find each channel's handle by going inside the channel and click the down-arrow and selecting view info.

![step3](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/step3.png)

Step 4: For per-project customized routing, first create the project custom field (Administration > Custom fields > Project).

![step4a](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/step4a.png)
![step4b](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/step4b.png)

Step 5: For per-project customized routing, configure the Rocket.chat channel handle inside your Redmine project.

![step5](https://raw.githubusercontent.com/furylynx/redmine_rocketchat/assets/step5.png)

## Credits

The source code is forked from https://github.com/scantem/redmine_rocketchat with minor adjustments for wiki pages. Special thanks to the original authors and contributors for making this awesome hook for Redmine.
