class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email
  validates :password, length: { minimum: 8}
  validates_confirmation_of :password_confirmation

  has_many :honeydos

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
