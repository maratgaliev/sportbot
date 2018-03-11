module BotCommand
  class Undefined < Base
    def start
      send_message('Неизвестная или некорректная команда. Введите /start для списка команд.')
    end
  end
end