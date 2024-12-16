# Create an interface Message with a method send_message. Then:
# Implement two classes EmailMessage and SMSMessage that both implement the send_message method. EmailMessage should send an email, and SMSMessage should send a text message.
# Write a function send_notification that takes an object of type Message and calls the send_message method.
# Demonstrate polymorphism by calling send_notification with instances of both EmailMessage and SMSMessage.

class Message
  def send_message
    raise NotImplementedError, "method not to be used here"
  end
end

class EmailMessage < Message
  def initialize(email, subject, body)
    @recipient_email = email
    @subject = subject
    @body = body
  end
  def send_message
    puts "Sending Email to #{@recipient_email}"
    puts "Subject: #{@subject}"
    puts "Body: #{@body}"
    puts "Email sent successfully!"
  end
end

class SMSMessage < Message
  def initialize(mobile_number, text)
    @number = mobile_number
    @text = text
  end

  def send_message
    puts "Sending SMS to #{@number}"
    puts "Message: #{@text}"
    puts "SMS sent !"
  end
end

def send_notification(messages)
  messages.each do |message|
    message.send_message 
  end
end

email = EmailMessage.new("latherabhinav55@gmail.com", "Meeting Reminder", "Don't forget the session at 9 AM tomorrow.")
sms = SMSMessage.new("7082959391", "Tommorow 9 am session")


notifications = [email, sms]
send_notification(notifications)