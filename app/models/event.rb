class Event < ApplicationRecord
  has_many :event_participants
  has_many :users, through: :event_participants

  enum :status, draft: 10, published: 20
  enum :category, tech: 10, music: 20, sports: 30, travel: 40, food: 50
end
