class AddDateToWalkthrough < ActiveRecord::Migration
  def change
  	add_column :walkthroughs, :date, :date
  end
end
