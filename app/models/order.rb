# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_products
  belongs_to :order_status
  belongs_to :customer
  # belongs_to :customer
  # validates :tax, :shipping, :sub_total, :total, presence: true

  before_save :update_subtotal

  def subtotal
    order_products.collect { |op| op.valid? ? (op.qty * op.unit_price) : 0 }.sum
  end

  private

  def update_subtotal
    self[:sub_total] = subtotal
  end
end
