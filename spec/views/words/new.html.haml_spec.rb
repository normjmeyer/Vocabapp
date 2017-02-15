require 'rails_helper'

RSpec.describe "words/new", type: :view do
  before(:each) do
    assign(:word, Word.new(
      :name => "MyString",
      :language => "MyString",
      :word_class => "MyString",
      :definition => "MyText",
      :comments => "MyText",
      :frequency => 1
    ))
  end

  it "renders new word form" do
    render

    assert_select "form[action=?][method=?]", words_path, "post" do

      assert_select "input#word_name[name=?]", "word[name]"

      assert_select "input#word_language[name=?]", "word[language]"

      assert_select "input#word_word_class[name=?]", "word[word_class]"

      assert_select "textarea#word_definition[name=?]", "word[definition]"

      assert_select "textarea#word_comments[name=?]", "word[comments]"

      assert_select "input#word_frequency[name=?]", "word[frequency]"
    end
  end
end
