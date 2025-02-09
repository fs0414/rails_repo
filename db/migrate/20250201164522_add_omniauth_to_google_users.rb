class AddOmniauthToGoogleUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :google_users, :provider, :string
    add_column :google_users, :uid, :string
  end
end
