Rails.application.routes.draw do
  post '/stream-auth', to: 'stream_auth#auth'
end
