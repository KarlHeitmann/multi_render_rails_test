# == Schema Information
#
# Table name: colors
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Color < ApplicationRecord
  has_many :product_colors
  has_many :products, through: :product_colors
end
