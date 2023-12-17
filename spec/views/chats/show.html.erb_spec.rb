require 'rails_helper'

RSpec.describe "chats/show", type: :view do
  before(:each) do
    @chat = Chat.new(
      history: "",
      q_and_a: "Q And A",
      id: "12345"
    )
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/current-chat/)
    expect(rendered).to match(/ArtGuide/)
  end
end
