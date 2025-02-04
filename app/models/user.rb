class User < ApplicationRecord
  # Validation to solve the problem of empty name
  validates :name, presence: true

  # Relation to explain user can have many articles
  has_many :articles

  after_create :log_new_user

  private
    def log_new_user
      puts "New user created: #{name}"
    end
end
