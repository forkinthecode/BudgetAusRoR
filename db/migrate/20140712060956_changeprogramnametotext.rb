class Changeprogramnametotext < ActiveRecord::Migration
  def change
  	change_column :components, :name, :string, :limit => 500
  end
end
