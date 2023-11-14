require 'rails_helper'

RSpec.describe "chats/index", type: :view do
  before(:each) do
    assign(:chats, [
      Chat.create!(
        history: "",
        q_and_a: "Q And A"
      ),
      Chat.create!(
        history: "",
        q_and_a: "Q And A"
      )
    ])
  end

  it "renders a list of chats" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Q And A".to_s, count: 2
  end
end
