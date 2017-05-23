Chatbot in Sinatra with Api.ai and Slack Integration
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)

## About

Chatbot para Slack com as funcionalidades de Faq e agregador de sites.

## [Clique e veja online](https://crystian-app1-exchange.herokuapp.com/)

![Work in Slack](https://raw.githubusercontent.com/crystianyamakawa/exchange/master/public/use_in_slack.png)



# Dependencies
```
  * Api.ai to Natural language treatment
```

# Getting Started
```
  * docker-compose build
  * docker-compose run --rm website rake db:create db:migrate
  * docker-compose up
```

# Test
```
  * docker-compose run --rm website rspec
```
