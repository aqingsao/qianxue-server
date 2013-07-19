class CreateNoteBooks < ActiveRecord::Migration
  def change
    create_table :note_books do |t|
      t.string :title
      t.string :subTitle

      t.timestamps
    end
  end
end
