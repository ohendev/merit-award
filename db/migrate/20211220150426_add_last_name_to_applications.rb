class AddLastNameToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :last_name, :string
  end
end
