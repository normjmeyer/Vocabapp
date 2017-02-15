require 'rails_helper'

RSpec.describe "dictionaries/index", type: :view do
  before(:each) do
    assign(:dictionaries, [
      Dictionary.create!(
        :name => "Name1",
        :language => "Language"
      ),
      Dictionary.create!(
        :name => "Name2",
        :language => "Language"
      )
    ])
  end

  it "renders a list of dictionaries" do
    render
    assert_select "tr>td", :text => /^Name./, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
  end
end
