class Changeprogramnametotext3 < ActiveRecord::Migration
  def change
  	change_column :programs, :name, :text
  end
end
