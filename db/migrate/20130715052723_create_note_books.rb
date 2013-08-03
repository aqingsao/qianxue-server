class CreateNoteBooks < ActiveRecord::Migration
  def change
    create_table :note_books do |t|
      t.string :title
      t.string :subTitle
      t.belongs_to :user

      t.timestamps
    end
  end
end
