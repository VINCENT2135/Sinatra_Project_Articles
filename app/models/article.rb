class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true 
    validates :description, presence: true
    validates_uniqueness_of :title
end 
