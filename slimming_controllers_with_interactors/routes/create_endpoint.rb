resources :messages, only: [:new, :create]

# messages     POST /messages(.:format)      messages#create
# new_message  GET  /messages/new(.:format)  messages#new
