class Addnewcolumtocomponents < ActiveRecord::Migration
  def change
  	add_column :components, :plus3, :integer
  end
end
