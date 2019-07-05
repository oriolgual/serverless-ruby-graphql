# frozen_string_literal: true

class PostType < GraphQL::Schema::Object
  description 'A blog post'
  field :id, ID, null: false
  field :title, String, null: false
end
