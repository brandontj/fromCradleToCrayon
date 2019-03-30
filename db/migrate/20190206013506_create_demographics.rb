class CreateDemographics < ActiveRecord::Migration[5.1]
  def change
    create_table :demographics do |t|
      t.date :date_of_birth, null: false
      t.date :start_date, null: false
      t.date :end_date
      t.string :parent_name, null: false
      t.string :allergy
      t.string :medicine
      t.string :sibling
      t.string :referral
      t.timestamps
    end
  end
end
