module Api::V1
  class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
      render json: @tweets
    end
    def create
  @tweets = Tweet.create(idea_params)
  render json: @tweet
end

private

  def idea_params
    params.require(:tweet).permit(:username, :body)
  end
  end
end