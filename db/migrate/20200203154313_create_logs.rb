class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :outcome
      t.string :event
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
