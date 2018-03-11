class User < ApplicationRecord
  validates_uniqueness_of :telegram_id

  has_many :training_statuses
  has_many :trainings, through: :training_statuses
  
  enum sex: { 'Мужчина': 0, 'Женщина': 1 }
  enum skill_level: { 'Новичок': 1, 'Продолжающий': 2, 'Продвинутый': 3 }

  def set_next_bot_command(command, id = nil)
    self.bot_command_data['command'] = command
    self.bot_command_data['id'] = id
    save
  end

  def get_next_bot_command
    bot_command_data['command']
  end

  def reset_next_bot_command
    self.bot_command_data = {}
    save
  end
end