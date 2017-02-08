class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |t|
			t.string :long_url
			t.string :short_url

		end
	end
end


# 1. create a new migration file
		# column click count , integers
