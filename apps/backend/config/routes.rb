Rails.application.routes.draw do
  root "ping#pong"

  get "ping", to: "ping#pong", as: :ping
end
