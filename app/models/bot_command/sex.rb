module BotCommand
  class Sex < Base
    def should_start?
      true
    end

    def start
      user.sex = text
      user.save!
      answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w(Новичок Продолжающий Продвинутый)], one_time_keyboard: true)
      send_message("Теперь выберите тренировочный план:", reply_markup: answers)
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Sports')
    end
  end
end