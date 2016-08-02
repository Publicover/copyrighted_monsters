require 'test_helper'
require "#{Rails.root}/app/models/location.rb"


class LocationTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "locations exist" do
    assert Location
  end

  test "locations have an address" do
    location = locations(:one)
    assert_equal "AddressOne", location.address
  end

  test "locations have a name" do
    location = locations(:one)
    assert_equal "NameOne", location.name
  end

  test "locations have a city" do
    location = locations(:one)
    assert_equal "CityOne", location.city
  end

  test "locations have a state" do
    location = locations(:one)
    assert_equal "StateOne", location.state
  end

end
