require 'rails_helper'

RSpec.describe "venues/index", type: :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :group_id => 1,
        :name => "Name",
        :state => "State",
        :city => "City",
        :street_address => "Street Address"
      ),
      Venue.create!(
        :group_id => 1,
        :name => "Name",
        :state => "State",
        :city => "City",
        :street_address => "Street Address"
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
  end
end
