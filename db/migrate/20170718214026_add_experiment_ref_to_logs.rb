class AddExperimentRefToLogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :logs, :experiment, foreign_key: true
  end
end
