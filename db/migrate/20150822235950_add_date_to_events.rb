class AddDateToEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.datetime :date
    end
  end
end
