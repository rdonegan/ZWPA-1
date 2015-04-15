class SetDefaultUserV2 < ActiveRecord::Migration
  def up
	    zwpa = User.new
	    zwpa.username = "zwpa"
	    zwpa.password = "secret"
	    zwpa.password_confirmation = "secret"
	    zwpa.role = "admin"
	    zwpa.save!
	end

    def down
    end
end
