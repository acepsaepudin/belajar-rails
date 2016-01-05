class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { maximum: 25 }
end
