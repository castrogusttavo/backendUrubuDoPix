require './app/usercases/orders/create'

class OrdersController
  def initialize(user_id)
    @user_id = user_id
  end

  def self.create(params)
    Orders::Create.new(params).call
  end
end
