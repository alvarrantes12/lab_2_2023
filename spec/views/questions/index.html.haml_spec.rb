require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        category: "Category",
        question: "Question"
      ),
      Question.create!(
        category: "Category",
        question: "Question"
      )
    ])
  end

  it "renders a list of questions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Category".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Question".to_s), count: 2
  end
end
