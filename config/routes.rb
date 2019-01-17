Rails.application.routes.draw do
  namespace :api do
    get "/name_thing" => "params_games#name_action"
    get "/string_guessing_game" => "params_games#string_guessing_game"
    get "/segment_params_guess/:guess" => 'params_games#string_guessing_game'
    post "body_params_guess" => 'params_games#string_guessing_game'
  end
end
