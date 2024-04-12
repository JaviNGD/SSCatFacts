class CreateCatFacts < ActiveRecord::Migration[7.1]
  def change
    create_table :cat_facts do |t|
      t.string :fact, null: false

      t.timestamps
    end
    add_index :cat_facts, :fact, unique: true
  end
end
