class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :telegram_id
      t.string :first_name
      t.string :last_name
      t.jsonb :bot_command_data, default: {}
      t.integer :skill_level
      t.integer :age
      t.integer :sex
      t.timestamps null: false
    end
  end
end
