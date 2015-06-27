class CreateHoneydos < ActiveRecord::Migration
  def change
    create_table :honeydos do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
