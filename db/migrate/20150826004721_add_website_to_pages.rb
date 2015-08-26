class AddWebsiteToPages < ActiveRecord::Migration
  def change
    change_table :pages do |t|
      t.belongs_to :website, index: true, foreign_key: true
    end
  end
end
