require 'rails_helper'

RSpec.describe "chats/new", type: :view do
  before(:each) do
    assign(:chat, Chat.new(
      history: "",
      q_and_a: "MyString"
    ))
  end

  it "renders new chat form" do
    render

    assert_select "form[action=?][method=?]", chats_path, "post" do

      assert_select "input[name=?]", "chat[history]"

      assert_select "input[name=?]", "chat[q_and_a]"
    end
  end
end
