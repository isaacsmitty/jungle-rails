class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_email(order)
    @order = order
    # @url  = 'http://example.com/login'
    mail(to: @order.email, subject: "Order #: #{@order.id}")
  end
end