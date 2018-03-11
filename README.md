# Simple Telegram Bot with Webhooks for trainings planning

## Launch Rails server

Run as usual

```ruby
rails s
```

## Setup ngrok

Launch ngrok and get https host (see XXX.ngrok.io at bottom):

```ruby
ngrok http 3000
```

## Add your bot token

Register your bot with BotFather:

**secrets.yml**

```ruby
development:
  bot_token: XXXX:XXXX
```

## Setup webhook

Make GET request to Telegram API:

```ruby
https://api.telegram.org/botXXXX:XXXX/setWebhook?url=https://XXX.ngrok.io/webhooks/telegram_SAMPLE_STRING
```

## Setup routing

Add new route:

**routes.rb**

```ruby
Rails.application.routes.draw do
  post '/webhooks/telegram_SAMPLE_STRING' => 'webhooks#callback'
end
```