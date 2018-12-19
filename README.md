# Ruby GraphQL API on AWS Lambda

An example of how to build a GraphQL API with Ruby on AWS Lambda without Sinatra or Rails.

## Installation

Clone this repo:

    $ git clone https://github.com/oriolgual/serverless-ruby-graphql.git
    $ cd serverless-ruby-graphql
    $ bundle
    $ npm install -g serverless

## Deploy

    $ sls deploy

## Usage

1. Grab the endpoint of your function after deploying
2. Run `curl -XPOST YOUR_LAMBDA_ENDPOINT -d '{post(id: 1) {id title}}'`
