module Api::V1
  class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
      render json: @tweets
    end
    def create
  @tweets = Tweet.create(tweet_params)
  render json: @tweets
end

private

  def tweet_params
    params.require(:tweet).permit(:username, :body)
  end
  end
end