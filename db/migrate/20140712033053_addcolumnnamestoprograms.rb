class Addcolumnnamestoprograms < ActiveRecord::Migration
  def change
  	add_column :programs, :objectives, :text
  	add_column :programs, :notes, :text
  end
end
