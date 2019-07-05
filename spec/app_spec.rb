require_relative '../app'

describe "request" do
  it "returns the request body" do
    query = '{post(id: 1) {id title}}'

    response = request(event: {"body" => query}, context: {})
    json_response = {"data"=>{"post"=>{"id"=>"1", "title"=>"First post"}}}

    expect(JSON.parse(response[:body])).to eq(json_response)
  end

  it "returns the status code" do
    body = "Hello world!"

    response = request(event: {"body" => body}, context: {})

    expect(response[:statusCode]).to eq(200)
  end
end
