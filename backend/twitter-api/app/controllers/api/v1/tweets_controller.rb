module Api::V1
  class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
      render json: @tweets
    end
  end
end