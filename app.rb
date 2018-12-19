require 'json'
require_relative "app/graphql/schema"

def request(event:, context:)
  puts "Received Request: #{event}"

  body = Schema.execute(event["body"]).to_json

  {
    statusCode: 200,
    body: body
  }
rescue StandardError => e
  puts e.message
  puts e.backtrace.inspect

  {
    statusCode: 400,
    body: JSON.generate("Bad request, please POST a request body!")
  }
end
