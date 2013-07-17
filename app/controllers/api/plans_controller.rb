class Api::PlansController < ApplicationController
	skip_before_filter :authenticate_user! # we do not need devise authentication here

	def index
    render json: current_user.plans
	end

	def show
    render json: Plan.find(params[:id])
	end
end