class User < ActiveRecord::Base
  before_create :set_user_token, unless: :token?
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  has_many :markers

  def set_user_token
    self.token = generate_user_token
  end

  private

  def generate_user_token
    loop do
      random_token = SecureRandom.urlsafe_base64
      break random_token unless User.exists?(token: random_token)
    end
  end

end
