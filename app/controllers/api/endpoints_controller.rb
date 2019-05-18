module Api
  class EndpointsController < ApiController
    before_action :set_endpoint

    def execute

      render json: EndpointExecutorService.run(@endpoint)
    end

    private

    def set_endpoint
      @endpoint = Endpoint.find_by_slug(params[:path])
    end
  end
end