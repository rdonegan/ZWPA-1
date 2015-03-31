class RemoveNoteFromWastes < ActiveRecord::Migration
  def change
  	remove_column :wastes, :note
  end
end
