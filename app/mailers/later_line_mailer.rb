class LaterLineMailer < ApplicationMailer

  def finished_poem_email(first_line, current_line)
    @first_line = first_line
    @current_line = current_line
    mail(to: @current_line.email, subject: 'Your x-Quisite Corpse is now ready')
  end

end
