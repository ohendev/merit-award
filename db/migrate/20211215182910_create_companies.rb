class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :activity
      t.text :description
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
