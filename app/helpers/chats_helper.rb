module ChatsHelper
    def list_name(chat)
      if chat.title.present?
        chat.title
      else
        "Chat #{chat.id}"
      end
    end
  end
