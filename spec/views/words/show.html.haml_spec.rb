require 'rails_helper'

RSpec.describe "words/show", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      :name => "Name",
      :language => "Language",
      :word_class => "Word Class",
      :definition => "MyText",
      :comments => "MyText",
      :frequency => 2,
      :dictionary => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Word Class/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
