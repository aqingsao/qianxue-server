class Api::ReviewsController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def create
		review = Review.create(:user_id=>params[:review][:user_id], :note_id=>params[:review][:note_id], :status=>params[:review][:status])
		review.save!

    render json: []
	end
end