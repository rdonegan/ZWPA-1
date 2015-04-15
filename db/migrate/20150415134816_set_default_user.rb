class SetDefaultUser < ActiveRecord::Migration
  def up
    zwpa = User.new
    zwpa.username = "zwpa"
    zwpa.password = "sixty4S14th"
    zwpa.role = "admin"
    zwpa.save!
  end

  def down
    zwpa = User.last
    User.delete zwpa
  end
end
