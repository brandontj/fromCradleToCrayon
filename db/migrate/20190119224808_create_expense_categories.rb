class CreateExpenseCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_categories do |t|
      t.string :category_name
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
