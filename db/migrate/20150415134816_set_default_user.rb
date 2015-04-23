class SetDefaultUser < ActiveRecord::Migration
	def change
		remove_column :users, :password
		add_column :users, :password_digest, :string
		add_column :users, :role, :string
	end
end
