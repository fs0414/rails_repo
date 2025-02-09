class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :descripton
      t.integer :category, null: false
      t.integer :status, null: false, default: 0
      t.datetime :event_started_at, null: false
      t.datetime :event_ended_at, null: false
      t.datetime :recruit_started_at, null: false
      t.datetime :recruit_ended_at, null: false
      t.string :timezone, null: false, default: 'UTC'

      t.timestamps
    end
  end
end
