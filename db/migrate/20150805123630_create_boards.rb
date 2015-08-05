class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description
      t.belongs_to :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
