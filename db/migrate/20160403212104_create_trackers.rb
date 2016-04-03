class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :activity
      t.decimal :duration
      t.string :effect
      t.decimal :weight
      t.decimal :totolduration
      t.text :progress

      t.timestamps null: false
    end
  end
end
