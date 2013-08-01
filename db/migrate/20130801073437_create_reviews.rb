class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :note
      t.belongs_to :user
      t.integer :status

      t.timestamps
    end
  end
end
