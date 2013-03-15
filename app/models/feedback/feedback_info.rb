module Feedback
  class FeedbackInfo < ::ActiveResource::Base
    self.site = Settings.feedback.site_url
  end
end