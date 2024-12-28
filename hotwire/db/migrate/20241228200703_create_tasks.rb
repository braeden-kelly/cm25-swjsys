class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :habit, null: false, foreign_key: true
      t.date :day
      t.datetime :completed_at

      t.timestamps
    end
  end
end
