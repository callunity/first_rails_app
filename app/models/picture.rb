class Picture < ActiveRecord::Base
has_many :comments



  def self.most_recent_five
    order(created_at: :desc).limit(5)
  end

  def self.older
    where("created_at > ?", (Time.now - 1.month))
  end
end
