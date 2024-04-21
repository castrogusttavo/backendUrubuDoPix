require "sinatra"
require "sinatra/activerecord"
require 'dotenv'
Dotenv.load

require './app/adapters/controllers/users_controller'
require './app/adapters/controllers/orders_controller'

set :database, { adapter: "sqlite3", database: ENV.fetch['DB_PATH', nil] }

post '/users' do
  { result: UserController.create(params) }.to_json
end

post '/:user_id/orders' do
  { result: OrdersController.new(params[:user_id]).create(params) }.to_json
end
