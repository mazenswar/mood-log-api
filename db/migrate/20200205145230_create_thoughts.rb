class CreateThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :thoughts do |t|
      t.string :n_thought
      t.integer :n_before
      t.integer :n_after
      t.string :p_thought
      t.integer :p_belief
      t.belongs_to :log, foreign_key: true
      t.belongs_to :distortion, foreign_key: true
      t.timestamps
    end
  end
end
