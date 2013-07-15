class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :description
      t.integer :book_id

      t.timestamps
    end
  end
end
