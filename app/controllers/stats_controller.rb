class StatsController < ApplicationController
  before_action :set_endpoint, only: :show

  def show; end

  def index
    @endpoints = Endpoint.all
  end

  private

  def set_endpoint
    @endpoint = Endpoint.find(params[:endpoint_id])
  end
end