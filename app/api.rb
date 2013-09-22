require 'sequel'
require 'grape'

module Rest

	class API < Grape::API
    
		prefix "api"
		format :json

		# TEST
		get '/test' do
			{ :test => 'test', :current_time => Time.now.strftime("%Y-%m-%d %H:%M:%S") }
		end

		# ITEM resource
		resource "items" do
			get do
				{ :total => Item.count, :data => Item.all.map { |e| { :id => e.id, :name => e.name, :price => e.price } } }
			end
 
			get ':id' do
				{ :data => Item.where(:id => params[:id]).map { |e| { :id => e.id, :name => e.name, :price => e.price } } }
			end
			
			post do
				puts 'bbbbbbb'
				newItem = Item.insert(:name => params[:name], :price => params[:price])
			end
			
			put do
				puts 'method PUT currently not implemented ...'
			end			
		end
		
	end
end

