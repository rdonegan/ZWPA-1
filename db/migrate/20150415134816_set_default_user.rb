class SetDefaultUser < ActiveRecord::Migration
	def change
		remove_column :users, :password
		add_column :users, :password_digest, :string
		add_column :users, :role, :string
	end

	def up
	    zwpa = User.new
	    zwpa.username = "zwpa"
	    zwpa.password = "secret"
	    zwpa.role = "admin"
	    zwpa.save!
	end

    def down
    	zwpa = User.last
    	User.delete zwpa
    end
end
