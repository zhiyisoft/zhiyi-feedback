# encoding: utf-8

module Feedback
  class FeedbackInfosController < ApplicationController
    skip_authorization_check
    respond_to :html, :json, :js
    layout "home"

    def index
      @feedback_infos = FeedbackInfo.paginate(:page => params[:page], :per_page => 10)
    end

    def new
      @feedback_info = FeedbackInfo.new
      render :layout => false
    end

    def show
      @feedback_info = FeedbackInfo.find(params[:id]) 
    end

    def create
      @feedback_info = FeedbackInfo.new(params[:feedback_info])
      if (@flag = @feedback_info.save)
        Resque.enqueue(Email,"意见反馈",Email.to_html("send_feedback_info",@feedback_info.attributes),Settings.feedback_receiver)
      end
      render :layout => false
    end
  end
end
