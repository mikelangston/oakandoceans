require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :profile_image => "MyString",
      :screen_name => "MyString",
      :age => 1,
      :birth_day => 1,
      :birth_month => "MyString",
      :birth_year => 1
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_profile_image[name=?]", "profile[profile_image]"

      assert_select "input#profile_screen_name[name=?]", "profile[screen_name]"

      assert_select "input#profile_age[name=?]", "profile[age]"

      assert_select "input#profile_birth_day[name=?]", "profile[birth_day]"

      assert_select "input#profile_birth_month[name=?]", "profile[birth_month]"

      assert_select "input#profile_birth_year[name=?]", "profile[birth_year]"
    end
  end
end
