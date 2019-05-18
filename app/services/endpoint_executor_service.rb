class EndpointExecutorService
  def self.run(endpoint)
    result = ActiveRecord::Base.connection.execute(endpoint.sql_statement)
    endpoint.logs << EndpointLog.create
    result
  end
end
