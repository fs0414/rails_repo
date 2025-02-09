class EventParticipantsTransitions < ActiveRecord::Migration[8.0]
  def change
    create_table :event_participants_transitions do |t|
      t.integer :status, null: false
      t.references :event_participant, null: false, foreign_key: true
    end
  end
end
