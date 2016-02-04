class Draw < ActiveRecord::Base
  has_many :draws
  has_many :matches
  has_many :games
end
