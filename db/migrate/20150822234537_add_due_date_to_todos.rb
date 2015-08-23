class AddDueDateToTodos < ActiveRecord::Migration
  def change
    change_table :todos do |t|
      t.datetime :due_date
    end
  end
end
