module BotCommand
  class Complete < Base
    def should_start?
      text =~ /\A\/complete/
    end

    def start
      user.trainings << Training.find(User.last.bot_command_data['id'])
      send_message("Тренировка завершена, введите /trainings для списка Ваших тренировок")
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Trainings')
    end
  end
end