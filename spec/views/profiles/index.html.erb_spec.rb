require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :profile_image => "Profile Image",
        :screen_name => "Screen Name",
        :age => 1,
        :birth_day => 2,
        :birth_month => "Birth Month",
        :birth_year => 3
      ),
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :profile_image => "Profile Image",
        :screen_name => "Screen Name",
        :age => 1,
        :birth_day => 2,
        :birth_month => "Birth Month",
        :birth_year => 3
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Image".to_s, :count => 2
    assert_select "tr>td", :text => "Screen Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Birth Month".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
