class AddFirstNameToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :first_name, :string
  end
end
