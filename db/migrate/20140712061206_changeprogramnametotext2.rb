class Changeprogramnametotext2 < ActiveRecord::Migration
  def change
	change_column :components, :name, :text
  end
end
