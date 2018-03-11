class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :title
      t.text :description
      t.integer :skill_level

      t.timestamps
    end
  end
end
