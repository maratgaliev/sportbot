module BotCommand
  class Age < Base
    def should_start?
      text =~ /^\d{1,2}/
    end

    def start
      user.age = text.to_i
      user.save!

      answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w(Мужчина Женщина)], one_time_keyboard: true)
      send_message("Ваш пол:", reply_markup: answers)

      user.set_next_bot_command('BotCommand::Sex')
    end
  end
end