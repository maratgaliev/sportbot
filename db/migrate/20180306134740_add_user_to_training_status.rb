class AddUserToTrainingStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :training_statuses, :user_id, :integer
    add_index :training_statuses, :user_id
  end
end
