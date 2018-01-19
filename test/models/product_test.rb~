require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "products attribute must not be empty" do
    product = Product.new
	assert product.invalid?
	assert product.errors[:title].any?
  end
end
