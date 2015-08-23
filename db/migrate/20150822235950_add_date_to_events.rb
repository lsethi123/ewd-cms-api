class AddDateToEvents < ActiveRecord::Migration
  def change
    change_table :todos do |t|
      t.date :date
    end
  end
end
