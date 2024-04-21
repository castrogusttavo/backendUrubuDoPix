require './app/usercases/users/create'

class UsersController
  def self.create(params)
    Users::Create.new(params).call
  end
end
