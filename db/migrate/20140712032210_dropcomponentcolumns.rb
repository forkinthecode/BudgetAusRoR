class Dropcomponentcolumns < ActiveRecord::Migration
  def change
  	remove_column :components, :objectives
  	remove_column :components, :notes
  end
end
