class ChangeDebitBeInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :expenses, :debit, :integer
  end
end
