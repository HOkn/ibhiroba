class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :screen_name, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-z][a-z0-9]+\z/ }, length: { in: 4..24 }
  validates :bio, length: { maximum: 200 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, length: { in: 2..26 }
  validates :password_confirmation, presence: true, if: :password
  validates :residencenow, presence: true,length: { in: 1..24 }
  validates :residence_country, presence: true, length: { in: 1..25 }
  validates :comment, length: { maximum: 100 }
end