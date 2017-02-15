require 'rails_helper'

RSpec.describe "dictionaries/show", type: :view do
  before(:each) do
    @dictionary = assign(:dictionary, Dictionary.create!(
      :name => "Name",
      :language => "Language"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Language/)
  end
end
