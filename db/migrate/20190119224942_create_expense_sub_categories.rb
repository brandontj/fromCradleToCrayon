class CreateExpenseSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_sub_categories do |t|
      t.string :sub_category_name
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
