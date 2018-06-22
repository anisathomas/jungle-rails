# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class OrderMailerPreview < ActionMailer::Preview
  def order_mail_preview
    OrderMailer.order_email(User.first, Order.find(22))
  end
end
