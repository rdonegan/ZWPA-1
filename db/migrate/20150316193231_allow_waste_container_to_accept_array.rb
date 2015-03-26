class AllowWasteContainerToAcceptArray < ActiveRecord::Migration
  def change
  	change_column :walkthroughs, :waste_containers, :text, array: true
  end
end
