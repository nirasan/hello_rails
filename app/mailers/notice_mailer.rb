class NoticeMailer < ApplicationMailer

  default from:"noreply@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def comment_notice(comment)
    @comment = comment

    #mail to: "admin@example.com", subject: "新しいコメントが投稿されました。"
    mail to: "chibag@gmail.com", subject: "新しいコメントが投稿されました。"
  end
end
