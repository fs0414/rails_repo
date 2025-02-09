class EventParticipant < ApplicationRecord
  belongs_to :event
  belongs_to :user

  has_many :event_participant_transitions
end
