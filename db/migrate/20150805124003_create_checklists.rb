class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.integer :step
      t.text :description
      t.belongs_to :todo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
