Chatbot in Sinatra with Api.ai and Slack Integration
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)

## About

Chatbot para Slack com as funcionalidades de Faq e agregador de sites.

## [Api sinatra](https://crystian-app2-chatbot.herokuapp.com/sinatra)

![Working in Slack](https://raw.githubusercontent.com/crystianyamakawasinatra_chatbot/tree/master/public/use_in_slack.png)



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
