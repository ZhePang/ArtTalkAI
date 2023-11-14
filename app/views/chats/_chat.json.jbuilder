json.extract! chat, :id, :history, :q_and_a, :created_at, :updated_at
json.url chat_url(chat, format: :json)