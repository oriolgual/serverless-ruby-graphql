# frozen_string_literal: true

require_relative 'post_type'
require_relative '../models/post'

class QueryType < GraphQL::Schema::Object
  description 'The query root of this schema'

  # First describe the field signature:
  field :post, PostType, null: true do
    description 'Find a post by ID'
    argument :id, ID, required: true
  end

  # Then provide an implementation:
  def post(id:)
    Post.find(id)
  end
end
