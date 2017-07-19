class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.text :summary
      t.integer :budget
      t.integer :scientist_id

      t.timestamps
    end
  end
end
