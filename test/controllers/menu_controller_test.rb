require 'test_helper'

class MenuControllerTest < ActionController::TestCase

  test "item price is of correct format" do
    # regex pattern match for $[positive number].[positive two-digit number]
    price_pattrn = /(^\d*\.\d{2}$)/
    assert_match price_pattrn, '10.00', "should match $[positive number].[positive two-digit number]"
  end

  test "list item prices are of correct format" do
    get :index
    price_pattrn = /(^\d*\.\d{2}$)/
    assert_select 'tr#items' do |i|
      i.each do |e|
        assert_select e, 'td#price span', price_pattrn
      end
    end
  end

end
