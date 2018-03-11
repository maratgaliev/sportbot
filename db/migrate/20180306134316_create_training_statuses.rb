class CreateTrainingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :training_statuses do |t|
      t.references :training, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
