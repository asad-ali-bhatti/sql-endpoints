class EndpointConstraint
  def self.matches?(request)
    Endpoint.where(slug: request.params[:path]).any?
  end
end
