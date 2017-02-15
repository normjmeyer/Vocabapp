require 'rails_helper'

RSpec.describe "dictionaries/edit", type: :view do
  before(:each) do
    @dictionary = assign(:dictionary, Dictionary.create!(
      :name => "MyString",
      :language => "MyString"
    ))
  end

  it "renders the edit dictionary form" do
    render

    assert_select "form[action=?][method=?]", dictionary_path(@dictionary), "post" do

      assert_select "input#dictionary_name[name=?]", "dictionary[name]"

      assert_select "input#dictionary_language[name=?]", "dictionary[language]"
    end
  end
end
