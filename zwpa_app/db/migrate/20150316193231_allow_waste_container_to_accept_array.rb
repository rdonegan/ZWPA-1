class AllowWasteContainerToAcceptArray < ActiveRecord::Migration
  def change
  	change_column :walkthroughs, :waste_containers, :string, array: true, default:[]
  end
end
