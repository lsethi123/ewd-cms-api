class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :title
      t.string :stage
      t.datetime :estimated_close
      t.string :estimated_amount
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
