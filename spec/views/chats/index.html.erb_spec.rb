require 'rails_helper'

RSpec.describe "chats/index", type: :view do
  it "renders a list of chats" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/You don't have any chats yet. Create one by clicking/)
  end
end
