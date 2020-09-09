class CreateDocs < ActiveRecord::Migration[6.0]
  def change
    create_table :docs do |t|
      t.string :type
      t.string :number
      t.text :name

      t.timestamps
    end
  end
end
