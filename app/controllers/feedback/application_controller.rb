module Feedback
  class ApplicationController < ActionController::Base
    layout Proc.new { |controller| controller.request.xhr? ? false : 'application' }
  end
end
