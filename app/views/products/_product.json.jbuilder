# frozen_string_literal: true

json.extract! product, :id, :title, :price, :description, :image, :serving_size, :ingredient_list, :product_category_ids, :created_at, :updated_at
json.url product_url(product, format: :json)
