class Draw < ActiveRecord::Base
  has_many :draws
  has_many :matches
  has_one :game

  accepts_nested_attributes_for :game
end
