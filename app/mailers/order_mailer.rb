class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_email(user, order)
    @user = user
    @order = order
    @order_total = @order.total
    mail(to: @user.email, subject: "Jungle Summary Order #{ @order.id }")
  end
end
