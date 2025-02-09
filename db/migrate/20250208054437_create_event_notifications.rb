class CreateEventNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :event_notifications do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :notified_at, null: false
      t.text :content, null: false
      t.datetime :read_at

      t.timestamps
    end
  end
end
