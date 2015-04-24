require 'test_helper'
require 'place_bid'

class PlaceBidTest < MiniTest::Test
  def test_it_places_a_bid
    user = User.create! email: 'saad@gmail.com', password: 'password'
    another_user = User.create! email: 'another_user@gmail.com', password: 'password'
    product = Product.create! name: 'Some product'
    auction_product = AuctionProduct.create! value: 10, product_id: product.id

    service = PlaceBid.new value: 11, user_id: another_user, auction_product_id: auction_product.id

    service.execute

    assert_equal 11, auction_product.current_bid
  end
end
