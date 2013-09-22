require 'sequel'

# connect to local file database or create new if doesn't exits
DB = Sequel.sqlite('test.db')

# enable set_schema property
Sequel::Model.plugin :schema


#
# entity ITEM
#
class Item < Sequel::Model

	Sequel.extension :pagination
	
	set_schema do
		primary_key :id
		String :name
		Float :price	
	end

	create_table unless table_exists?
end

