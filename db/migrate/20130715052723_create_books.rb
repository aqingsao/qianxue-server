class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :subTitle

      t.timestamps
    end

    create_table :books_users do |t|
      t.belongs_to :book
      t.belongs_to :user
      t.timestamps
    end

  end
end
