class Product < ActiveRecord::Base
  belongs_to :user
  has_one :auction_product

  def has_auction_product?
    auction_product.present?
  end
end
