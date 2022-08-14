class AddMuhasebeMailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :muhasebe_mail, :string
  end
end
