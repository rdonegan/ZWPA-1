class RemoveStateFromRequests < ActiveRecord::Migration
  def change
  	remove_column :requests, :state
  end
end
