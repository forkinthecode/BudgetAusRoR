class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :acronym
      t.integer :portfolio_id

      t.timestamps
    end
  end
end
