# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  descripcion :text
#  image_url   :string
#  nombre      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
  has_many :product_colors
  has_many :colors, through: :procuct_colors
end
