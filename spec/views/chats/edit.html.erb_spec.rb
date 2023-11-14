require 'rails_helper'

RSpec.describe "chats/edit", type: :view do
  before(:each) do
    @chat = assign(:chat, Chat.create!(
      history: "",
      q_and_a: "MyString"
    ))
  end

  it "renders the edit chat form" do
    render

    assert_select "form[action=?][method=?]", chat_path(@chat), "post" do

      assert_select "input[name=?]", "chat[history]"

      assert_select "input[name=?]", "chat[q_and_a]"
    end
  end
end
