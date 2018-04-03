module Api::V1
  class TweetsController < ApplicationController
    def index
       @tweets = Tweet.order("created_at DESC")
      render json: @tweets
    end
    def create
  @tweets = Tweet.create(tweet_params)
  render json: @tweets
end

def update
  @tweets = Tweet.find(params[:id])
  @tweets.update_attributes(tweet_params)
  render json: @tweets
end

private

  def tweet_params
    params.require(:tweet).permit(:username, :body)
  end
  end
end