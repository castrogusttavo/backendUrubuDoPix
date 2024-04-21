# frozen_string_literal: true

class Transaction
  attr_aceessor :transaction_type, :value, :order_id

  def initialize(transaction_type:, value:, order_id:)
    @transaction_type = transaction_type
    @value = value
    @order_id = order_id
  end

  def
    {
      transaction_type: @transaction_type,
      value: @value,
      order_id: @order_id
    }
  end
end
