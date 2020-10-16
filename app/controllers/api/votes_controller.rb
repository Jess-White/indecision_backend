class Api::VotesController < ApplicationController

    def index
      @votes = Vote.all
      @votes = @votes.order(id: :desc)
      render "index.json.jb"
    end

    def create
      @vote = Vote.new(
        email: params[:email],
        framework: params[:framework],
      )
      if @vote.save
        render "show.json.jb"
      else
        render json: { errors: @vote.errors.full_messages }, status: :bad_request
      end
    end

    def show
      @vote = Vote.find(params[:id])
      render "show.json.jb"
    end

    def update
      @vote = Vote.find(params[:id])
      @vote.email = params[:email] || @vote.email
      @vote.framework = params[:framework] || @vote.framework
      if @vote.save
        render "show.json.jb"
      else
        render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      vote = Vote.find(params[:id])
      vote.destroy
      render json: { message: "review successfully destroyed!" }
    end

end
