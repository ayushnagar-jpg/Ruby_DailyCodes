class InvalidEmailError < StandardError
  def initialize(message)
    super(message)
  end
end

class Email
  def validate_email?(email)
    regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    raise InvalidEmailError.new("Email is invalid") unless email.match?(regex)
    true
  end
end
