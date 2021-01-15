class User < ApplicationRecord
  has_many :favorites, :dependent => :delete_all
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }
end
