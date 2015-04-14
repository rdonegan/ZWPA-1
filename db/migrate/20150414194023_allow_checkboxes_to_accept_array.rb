class AllowCheckboxesToAcceptArray < ActiveRecord::Migration
  def change
  	change_column :walkthroughs, :generate_toner_ink, :text, array: true
  	change_column :walkthroughs, :recycle_toner_ink, :text, array: true
  	change_column :walkthroughs, :generate_CFLs, :text, array: true
  	change_column :walkthroughs, :recycle_CFLs, :text, array: true
  	change_column :walkthroughs, :generate_batteries, :text, array: true
  	change_column :walkthroughs, :recycle_batteries, :text, array: true
  	change_column :walkthroughs, :generate_computers, :text, array: true
  	change_column :walkthroughs, :recycle_computers, :text, array: true
  	change_column :walkthroughs, :generate_cellphones, :text, array: true
  	change_column :walkthroughs, :recycle_cellphones, :text, array: true
  	change_column :walkthroughs, :generate_tvs, :text, array: true
  	change_column :walkthroughs, :recycle_tvs, :text, array: true
  	change_column :walkthroughs, :generate_other_corded_equipment, :text, array: true
  	change_column :walkthroughs, :recycle_other_corded_equipment, :text, array: true
  	change_column :walkthroughs, :generate_furniture, :text, array: true
  	change_column :walkthroughs, :recycle_furniture, :text, array: true
  	change_column :walkthroughs, :generate_linens_uniforms, :text, array: true
  	change_column :walkthroughs, :recycle_linens_uniforms, :text, array: true
  	change_column :walkthroughs, :generate_construction_debris, :text, array: true
  	change_column :walkthroughs, :recycle_construction_debris, :text, array: true
  	change_column :walkthroughs, :generate_pallets, :text, array: true
  	change_column :walkthroughs, :recycle_pallets, :text, array: true



  end
end
