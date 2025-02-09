class EventParticipantTransition < ApplicationRecord
  enum :status, registered: 10, participated: 20, canceled: 30
end
