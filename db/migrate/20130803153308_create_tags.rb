class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :note_books_tags do |t|
      t.belongs_to :note_book
      t.belongs_to :tag

      t.timestamps
    end

  end
end
