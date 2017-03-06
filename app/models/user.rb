class User < ActiveRecord::Base
  has_many :posts, foreign_key: :author_id
  has_many :categories, through: :posts, source: :category

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
        user = User.create(email: data["email"])
    end
    user
  end
end
