class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :auction_product

  validates_numericality_of :value
end
