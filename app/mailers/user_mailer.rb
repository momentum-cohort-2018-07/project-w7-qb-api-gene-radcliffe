class UserMailer < ApplicationMailer


    def answer(user)

        @user = user
        @message = "#{@user.username} has answered your question. Log in to view his answer"

    mail(
      to: 'g_radcliffe82@hotmail.com',
      from: 'gradcliffe82@gmail.com',
      subject: 'Someone answered your question!'
      
    )
    end
end
