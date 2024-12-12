module Message
  def send_message
    raise NotImplementedError, "You must implement the send_message method"
  end
end


class EmailMessage
  include Message

  def send_message
    puts "Sending an email: 'Your order has been confirmed.'"
  end
end

class SMSMessage
  include Message

  def send_message
    puts "Sending a text message: 'Your OTP is 123456.'"
  end
end

def send_notification(message_object)
  if message_object.respond_to?(:send_message)
    message_object.send_message
  else
    raise ArgumentError, "Object does not implement the required send_message method"
  end
end

def test_polymorphic_messaging_system
  email_message = EmailMessage.new
  sms_message = SMSMessage.new

  puts "Testing EmailMessage:"
  send_notification(email_message) 

  puts "\nTesting SMSMessage:"
  send_notification(sms_message) 
end
test_polymorphic_messaging_system
