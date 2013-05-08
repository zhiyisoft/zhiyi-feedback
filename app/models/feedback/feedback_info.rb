module Feedback
  class FeedbackInfo 
    include Mongoid::Document
    include Mongoid::Timestamps
    field :title
    field :username
    field :content
    field :current_url
    field :image
    
    validates :title, presence: true
    validates :content, presence: true
  end
end
