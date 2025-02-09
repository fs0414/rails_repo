class EventParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :event_participants do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :joined_at, null: false

      t.timestamps
    end
  end
end
