class CreateExpenseCategoryGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_category_groups do |t|
      t.string :category_group_name
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
