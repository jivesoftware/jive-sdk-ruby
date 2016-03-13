class AddJiveWebhooks010Migration < ActiveRecord::Migration
	def self.up
		create_table :jive_webhooks do |t|
			t.integer :jive_add_on_id
			t.integer :jive_oauth_token_id

			t.integer :webhook_id

			t.string :events
			t.string :object
			t.string :callback

			t.timestamps null: false
		end
	end

	def self.down
		drop_table :jive_webhooks
	end
end