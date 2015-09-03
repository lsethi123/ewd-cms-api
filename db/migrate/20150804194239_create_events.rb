class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
