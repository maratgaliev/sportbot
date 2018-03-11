module BotCommand
  class Sports < Base
    def should_start?
      true
    end

    def start
      user.skill_level = text
      user.save!
      send_message("Вы можете посмотреть список тренировок командой /trainings")
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Trainings')
    end
  end
end