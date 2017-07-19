class CreateScientists < ActiveRecord::Migration[5.1]
  def change
    create_table :scientists do |t|
      t.string :name
      t.string :discipline
      t.boolean :mad

      t.timestamps
    end
  end
end
