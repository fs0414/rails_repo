class ChangeTablesToEventParticipantsTransitions < ActiveRecord::Migration[8.0]
  def change
    rename_table :event_participants_transitions, :event_participant_transitions
  end
end
