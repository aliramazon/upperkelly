class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.integer :phone
      t.text :content

      t.timestamps
    end
  end
end
