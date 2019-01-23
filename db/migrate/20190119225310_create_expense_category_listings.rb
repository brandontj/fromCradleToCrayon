class CreateExpenseCategoryListings < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_category_listings do |t|
      t.integer :expense_category_id
      t.integer :expense_sub_category_id
      t.references (:expense_category), foreign_key: true
      t.references (:expense_sub_category), foreign_key: true
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
