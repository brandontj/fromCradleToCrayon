class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.references :vendor, foreign_key: true
      t.references :expense_category, foreign_key: true
      t.date :debit_date
      t.money :debit
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
