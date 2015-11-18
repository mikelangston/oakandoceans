require 'rails_helper'

RSpec.describe "venues/edit", type: :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :group_id => 1,
      :name => "MyString",
      :state => "MyString",
      :city => "MyString",
      :street_address => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_group_id[name=?]", "venue[group_id]"

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_street_address[name=?]", "venue[street_address]"
    end
  end
end
