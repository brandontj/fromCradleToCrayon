class CreateExpenseCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_categories do |t|
      t.string :category_name
      t.references :expense_category_group, foreign_key: true
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
