require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :group_id => 1,
      :name => "MyString",
      :venue_id => 1
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_group_id[name=?]", "event[group_id]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_venue_id[name=?]", "event[venue_id]"
    end
  end
end
