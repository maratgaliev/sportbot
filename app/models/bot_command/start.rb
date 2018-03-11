module BotCommand
  class Start < Base
    def should_start?
      text =~ /\A\/start/
    end

    def start
      send_message('Введите Ваш возраст:')
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Age')
    end
  end
end