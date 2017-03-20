class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string :title
      t.string :file

      t.timestamps
    end
  end
end
