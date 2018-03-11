module BotCommand
  class Trainings < Base
    def should_start?
      text =~ /\A\/trainings/
    end

    def start
      send_message("Список тренировок:\n" + Training.where(skill_level: user.read_attribute_before_type_cast('skill_level')).pluck(:id, :title).map{ |x|x.first.to_s + "] " + x.last }.join("\n"))
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Exercise')
    end
  end
end