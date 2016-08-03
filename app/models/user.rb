class User < ApplicationRecord
  has_many :cheeses
  has_many :favorites

  def favorite_converter
    favorites.count
  end
end
