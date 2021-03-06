# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :order_products
  has_many :product_categories
  has_many :categories, through: :product_categories

  has_one_attached :image

  validates :title, :price, :ingredient_list, presence: true

  paginates_per 30
end
