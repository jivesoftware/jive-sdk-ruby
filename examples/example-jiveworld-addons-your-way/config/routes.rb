Rails.application.routes.draw do
	mount JiveAddOns::Engine => "/jive/add-ons"
	mount JiveTiles::Engine => "/jive/tiles"
	mount JiveWebhooks::Engine => "/jive/webhooks"

	get 'tiles/app-external' => 'tiles/app_external#view'
	get 'tiles/app-external/action' => 'tiles/app_external#action'
	get 'tiles/app-external/configuration' => 'tiles/app_external#configuration'
end
