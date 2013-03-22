module Feedback
  class FeedbackMailer < ActionMailer::Base
    default from: Setting.email_from

    def send_feedback_info feedback_info
      @feedback_info = feedback_info
      mail(to: Setting.email_addr, subject: Setting.email_title)
    end
  end
end
