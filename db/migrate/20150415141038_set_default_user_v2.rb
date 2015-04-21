class SetDefaultUserV2 < ActiveRecord::Migration
  def up
	    zwpa = User.new
	    zwpa.username = "zerowaste@prc.org"
	    zwpa.password = "recycle1"
	    zwpa.password_confirmation = "recycle1"
	    zwpa.role = "admin"
	    zwpa.save!
	end

    def down
    end
end
