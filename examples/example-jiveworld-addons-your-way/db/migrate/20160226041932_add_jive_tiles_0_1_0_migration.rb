class AddJiveTiles010Migration < ActiveRecord::Migration
	def self.up
		create_table :jive_tiles do |t|
			t.integer :jive_add_on_id

			t.integer :tile_id
			t.string :code
			t.text :config
			t.string :guid
			t.string :jive_url
			t.string :name
			t.string :parent
			t.string :place_uri
			t.string :tenant_id
			t.string :url

			t.string :remote_id
			t.string :push_url

			t.boolean :uninstalled
			t.timestamps null: false
		end
	end

	def self.down
		drop_table :jive_tiles
	end
end
