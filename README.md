A simple rails application that serves as a webhook endpoint

Get it Running
--------------

### Production

Deploy to Heroku using the following steps:

#### Create

- Clone this repo
- `cd intercom-webhooks-test`
- [Install the Heroku Toolbelt](https://toolbelt.heroku.com/)
- `heroku login`
- `heroku create`
- `ruby -e "require 'securerandom'; puts SecureRandom.hex(128);"`
  - Use this string in the next command.
- `heroku config:set --app YOUR-APP-NAME SECRET_TOKEN=<string from previous command output>`

#### Deploy

- `git push heroku master`
- `heroku run rake db:migrate`
- `heroku domains`
  - Remember this URL for later.

For more help check out [how to get started with Rails
4](https://devcenter.heroku.com/articles/getting-started-with-rails4) on
Heroku.

#### Use
Create a webhook in Intercom and point it towards the output of the Heroku domains command above.
