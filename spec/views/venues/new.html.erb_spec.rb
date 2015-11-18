require 'rails_helper'

RSpec.describe "venues/new", type: :view do
  before(:each) do
    assign(:venue, Venue.new(
      :group_id => 1,
      :name => "MyString",
      :state => "MyString",
      :city => "MyString",
      :street_address => "MyString"
    ))
  end

  it "renders new venue form" do
    render

    assert_select "form[action=?][method=?]", venues_path, "post" do

      assert_select "input#venue_group_id[name=?]", "venue[group_id]"

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_street_address[name=?]", "venue[street_address]"
    end
  end
end
