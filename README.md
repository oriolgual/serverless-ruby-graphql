# Ruby GraphQL API on AWS Lambda [![CircleCI](https://circleci.com/gh/oriolgual/serverless-ruby-graphql.svg?style=svg)](https://circleci.com/gh/oriolgual/serverless-ruby-graphql)

An example of how to build a GraphQL API with Ruby on AWS Lambda without Sinatra or Rails.

## 🛠 Installation

You need to these dependencies installed:

1. Ruby 2.5.5 
1. bundler >= 2.0.2
1. Node 12.5
1. npm >= 6.9.2
1. Docker (if you want to deploy locally)

Clone this repo:

    $ git clone https://github.com/oriolgual/serverless-ruby-graphql.git
    $ cd serverless-ruby-graphql
    $ bundle
    $ npm install

## 🚛 Deploy

Deploying to production is handled by CircleCI (make sure to add your repo to CircleCi and add AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY). If you need to deploy a development environment run:

    $ npm run deploy:dev

## 📝 Usage

1. Grab the endpoint of your function after deploying
2. Run `curl -XPOST YOUR_LAMBDA_ENDPOINT -d '{post(id: 1) {id title}}'`


## 🏗Code structure

`app.rb` is the entry point of the application, it recieves the request handled from AWS and calls delegates everything to the schema.

`app/` has a really simple demo GraphQL API.
