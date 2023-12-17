require 'rails_helper'

RSpec.describe ChatsHelper, type: :helper do
  describe "chats helper" do
    it "list_name with chat title present" do
      chat1 = Chat.new({:id => '99999', :title => 'Hello Columbia Uni'})
      expect(list_name(chat1)).to eq("Hello Columbia Uni")
    end

    it "list_name with chat title not present should render chat id" do
      chat1 = Chat.new({:id => '12345'})
      expect(list_name(chat1)).to eq("Chat 12345")
    end
  end
end
