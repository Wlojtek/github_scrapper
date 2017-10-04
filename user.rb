class User < Sequel::Model
  def validate
    errors.add(:login, "can\'t be empty") if login.empty?
  end
end
