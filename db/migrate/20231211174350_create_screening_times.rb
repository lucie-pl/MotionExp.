class CreateScreeningTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :screening_times do |t|
      t.string :date
      t.string :hour
      t.string :version
      t.references :movie, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
