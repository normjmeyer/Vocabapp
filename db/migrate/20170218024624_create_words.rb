class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :language
      t.string :word_class
      t.text :definition
      t.text :comments
      t.integer :frequency
      t.references :dictionary, foreign_key: true

      t.timestamps
    end
  end
end
