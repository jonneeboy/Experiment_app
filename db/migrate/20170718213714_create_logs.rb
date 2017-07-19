class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :subject_nam
      t.text :comment
      t.boolean :deceased

      t.timestamps
    end
  end
end
