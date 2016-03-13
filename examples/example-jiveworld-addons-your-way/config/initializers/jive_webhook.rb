require 'jive/webhook'

Jive::Webhook.configure do |config|
	config.callback = "https://localhost/jive/webhooks"
end