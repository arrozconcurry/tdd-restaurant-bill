require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/restaurant_bill'

describe "RestaurantBill class" do

  before do
    @bill = RestaurantBill.new
  end

  it "Creates new instance of RestaurantBill class" do
    @bill.class.must_equal RestaurantBill
  end

  it "Initializes with ordered_items" do
    @bill.must_respond_to :ordered_items
  end

  it "Expects new items to be included in ordered_items" do
    @bill.order_item("potatoes", 3).must_include ["potatoes", 3]
  end

  it "Has 3 elements when 3 elements are added to order_item" do
    3.times { @bill.order_item("item", "price") }
    @bill.ordered_items.length.must_equal 3
  end

  ##KEEP GOING

  it "Returns total and combines with tax" do
    3.times { @bill.order_item("item", 5) }
    @bill.total.must_equal 16.47
  end

  # it "Can tip" do
  #   tip_bill = @bill.order_item("potatoes", 5)
  #   tip_bill.total.tipping(2).must_equal 7.49
  # end

end
