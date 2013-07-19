class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.integer :note_book_id

      t.timestamps
    end
  end
end
