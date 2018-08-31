class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.2]
  def change
      ## Recoverable
      add_column :users, :allow_password_change, :boolean, :default => false

      ## Trackable
      add_column :users, :sign_in_count, :integer, :default => 0, :null => false
      add_column :users, :current_sign_in_at, :datetime
      add_column :users, :last_sign_in_at, :datetime
      add_column :users, :current_sign_in_ip, :string
      add_column :users, :last_sign_in_ip, :string

      ## Confirmable
      add_column :users, :confirmation_token, :string
      add_column :users, :confirmed_at, :datetime
      add_column :users, :confirmation_sent_at, :datetime
      add_column :users, :unconfirmed_email, :string

      ## User Info
      add_column :users, :name, :string
      add_column :users, :nickname, :string
      add_column :users, :image, :string

      add_index :users, :confirmation_token, unique: true
      # add_index :users, :unlock_token,       unique: true
  end
end
