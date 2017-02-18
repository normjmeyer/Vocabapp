require 'rails_helper'

RSpec.describe "words/edit", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      :name => "MyString",
      :language => "MyString",
      :word_class => "MyString",
      :definition => "MyText",
      :comments => "MyText",
      :frequency => 1,
      :dictionary => nil
    ))
  end

  it "renders the edit word form" do
    render

    assert_select "form[action=?][method=?]", word_path(@word), "post" do

      assert_select "input#word_name[name=?]", "word[name]"

      assert_select "input#word_language[name=?]", "word[language]"

      assert_select "input#word_word_class[name=?]", "word[word_class]"

      assert_select "textarea#word_definition[name=?]", "word[definition]"

      assert_select "textarea#word_comments[name=?]", "word[comments]"

      assert_select "input#word_frequency[name=?]", "word[frequency]"

      assert_select "input#word_dictionary_id[name=?]", "word[dictionary_id]"
    end
  end
end
