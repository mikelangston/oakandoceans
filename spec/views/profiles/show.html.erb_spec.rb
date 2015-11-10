require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :profile_image => "Profile Image",
      :screen_name => "Screen Name",
      :age => 1,
      :birth_day => 2,
      :birth_month => "Birth Month",
      :birth_year => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Profile Image/)
    expect(rendered).to match(/Screen Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Birth Month/)
    expect(rendered).to match(/3/)
  end
end
