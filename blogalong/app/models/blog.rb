class Blog < ActiveRecord::Base
    validates :title, presence: true
    validates :blog_text, presence: true
end
