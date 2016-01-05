class Article < ActiveRecord::Base
	# add validation

	validates :title, :name, :content, presence: true
end
