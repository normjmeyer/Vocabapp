require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        :name => "Name",
        :language => "Language",
        :word_class => "Word Class",
        :definition => "MyText",
        :comments => "MyText",
        :frequency => 2
      ),
      Word.create!(
        :name => "Name",
        :language => "Language",
        :word_class => "Word Class",
        :definition => "MyText",
        :comments => "MyText",
        :frequency => 2
      )
    ])
  end

  it "renders a list of words" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Word Class".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
