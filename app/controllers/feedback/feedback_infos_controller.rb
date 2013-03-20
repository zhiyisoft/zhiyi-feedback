module Feedback
  class FeedbackInfosController < ApplicationController
    respond_to :html, :json, :js

    def index
      @feedback_infos = FeedbackInfo.paginate(:page => params[:page], :per_page => 30)
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
      if @feedback_info.save then
        redirect_to feedback_infos_path 
      else
        redirect_to root_path
      end
    end
  end
end