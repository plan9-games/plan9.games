Rails.application.routes.draw do
  post '/stream/auth', to: 'stream#auth'
  post '/stream/play', to: 'stream#play'
end
