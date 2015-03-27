class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :questions
  has_many :answers
  has_many :favorites, dependent: :destroy

  validates :screen_name, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[a-z][a-z0-9]+\z/ }, length: { in: 2..24 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }


  validates :password, confirmation: true, length: { in: 2..26 }
  validates :password_confirmation, presence: true, if: :password

  validates :child_age1, length: { maximum: 2 }
  validates :child_age2, length: { maximum: 2 }
  validates :residence_country, presence: true, length: { in: 1..25 }
  validates :residencenow, presence: true,length: { in: 1..24 }
  validates :school, length: { maximum: 35}
  validates :origin, length: { in: 1..25 }
  validates :wannaknow, presence: true, length: { in: 3..60 }
  validates :know, length: { maximum: 50}
  validates :bio, length: { maximum: 200 }
  validates :comment, length: { maximum: 100 }

end