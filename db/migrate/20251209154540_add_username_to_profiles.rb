class AddUsernameToProfiles < ActiveRecord::Migration[8.1]
  def change
    add_column :profiles, :username, :string
  end
end
