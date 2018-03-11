module BotCommand
  class Setup < Base
    def should_start?
      text =~ /\A\/setup/
    end

    def start
      send_message("Введите /accomplish_tutorial")

      user.set_next_bot_command('BotCommand::AccomplishTutorial')
    end
  end
end