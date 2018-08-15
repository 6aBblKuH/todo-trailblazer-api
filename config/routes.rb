# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', controllers: { sessions: 'api/v1/users/sessions', registrations: 'api/v1/users/registrations' }
      resource :projects
    end
  end
end
