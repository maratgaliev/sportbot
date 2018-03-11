module BotCommand
  class Exercise < Base
    def should_start?
      true
    end

    def start
      model = Training.where(id: text, skill_level: user.read_attribute_before_type_cast('skill_level')).first
      if model
        send_message("Описание тренировки:\n")
        send_message("#{model.description}\n")
        send_message("Вы можете пометить тренировку законченной командой /complete")
        user.reset_next_bot_command
        user.set_next_bot_command('BotCommand::Complete', text)
      else
        send_message("Введите корректный номер тренировки")
        user.set_next_bot_command('BotCommand::Exercise', text)
      end
    end
  end
end