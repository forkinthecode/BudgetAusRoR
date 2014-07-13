class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.integer :last_year
      t.integer :current_year
      t.integer :plus1
      t.integer :plus2
      t.integer :plus2
      t.string :source
      t.string :url
      t.text :objectives
      t.text :notes
      t.integer :program_id

      t.timestamps
    end
  end
end
