Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  devise_for :attendees, :speakers, :partners

  root 'home#index'

  # routes for all users
  authenticated :user do
  end

  # routes only for attendees
  authenticated :attendee, ->(u) { u.type == 'Attendee' } do
  end

  # routes only for speakers
  authenticated :speaker, ->(u) { u.type == 'Speaker' } do
  end

  # routes only for partners
  authenticated :partner, ->(u) { u.type == 'Partner' } do
  end
end
