class Shout < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true

  def self.recent
    order(created_at: :desc)
  end
end
