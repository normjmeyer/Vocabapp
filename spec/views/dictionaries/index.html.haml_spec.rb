require 'rails_helper'

RSpec.describe "dictionaries/index", type: :view do
  before(:each) do
    assign(:dictionaries, [
      Dictionary.create!(
        :name => "Name",
        :language => "Language"
      ),
      Dictionary.create!(
        :name => "Name",
        :language => "Language"
      )
    ])
  end

  it "renders a list of dictionaries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
  end
end
