class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: {site:service, page: page} }
  end

  def questions
    self.class.get("/2.2/qeustions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end

stack_exchange = Stackexchange.new("stackoverflow", 1)
p stack_exchange.questions
p stack_exchange.users