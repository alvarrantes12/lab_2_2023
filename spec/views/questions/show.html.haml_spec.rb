require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    assign(:question, Question.create!(
      category: "Category",
      question: "Question"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Question/)
  end
end
