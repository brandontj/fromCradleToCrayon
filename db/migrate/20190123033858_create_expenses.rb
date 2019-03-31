class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.references :vendor, foreign_key: true
      t.references :expense_category, foreign_key: true
      t.date :debit_date
      t.decimal :debit, precision: 8, scale: 2
      t.references :user, foreign_key: true
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
