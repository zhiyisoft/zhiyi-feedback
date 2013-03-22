module Feedback
  class FeedbackInfo 
    include Mongoid::Document
    include Mongoid::Timestamps
    field :title
    field :username
    field :content
  end
end