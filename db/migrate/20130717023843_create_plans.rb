class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.belongs_to :book
      t.belongs_to :user
      t.datetime :due_date

      t.timestamps
    end
  end
end
