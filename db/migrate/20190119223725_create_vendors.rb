class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.string :company_description
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
