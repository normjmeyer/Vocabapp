require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        :name => "Name",
        :language => "Language",
        :word_class => "Word Class",
        :definition => "MyDefinition",
        :comments => "MyComment",
        :frequency => 2,
        :dictionary => nil
      ),
      Word.create!(
        :name => "Name",
        :language => "Language",
        :word_class => "Word Class",
        :definition => "MyDefinition",
        :comments => "MyComment",
        :frequency => 2,
        :dictionary => nil
      )
    ])
  end

  it "renders a list of words" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Word Class".to_s, :count => 2
    assert_select "tr>td", :text => "MyDefinition".to_s, :count => 2
    assert_select "tr>td", :text => "MyComment".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
