require "graphql"
require_relative "query_type"

class Schema < GraphQL::Schema
  query QueryType
end
