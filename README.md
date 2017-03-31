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
- Create a new webhook in Intercom by heading to the Webhooks section of your [Developer Home Dashboard](http://developers.intercom.com/)
![Create New Webhook](https://uploads.intercomcdn.com/i/o/17010077/9f7520e78929bc2dfea661f8/New-create-webhook.png)
- In the `Webhook URL` field enter the output of the `heroku domains` command from above. 
    - Output of the `heroku domains` command:
    ![heroku domains](https://uploads.intercomcdn.com/i/o/21273714/4e13ff51ce2ed8ec8a54d8e3/File1490997084849)
    - Value of the `Webhook URL` field:
    ![Webhook URL](https://uploads.intercomcdn.com/i/o/21273874/74e2a1405038d2091fbc5e19/File1490997182246)
- In the `Hub Secret` field, enter the value of secret from [this](https://github.com/DamonFstr/Intercom-Webhooks-Test/blob/master/app/controllers/webhook_event_requests_controller.rb#L22) part of the code. 
    - If you were dealing with a production app you'd want to make this a little more secure.
    - This is to ensure that the webhook is coming from a verified source. 
    - The secret can be updated to whatever you want once it gets updated in the code in the above place.
    - You can read about this in the Intercom developer docs [here](https://developers.intercom.com/reference#signed-notifications)
    - Value in Intercom.
    ![Secret](https://uploads.intercomcdn.com/i/o/21274002/e123bed74e59a7368e36677a/File1490997385960)
- Choose the topics that you want to subscribe to:
    ![Topics](https://uploads.intercomcdn.com/i/o/21274063/6d1259c205013194cad9359c/File1490997477103)
- Create the webhook:
- If everything is set up correctly, visit the `heroku domains` URL and you should see a ping from Intercom like this:
    ![Ping](https://uploads.intercomcdn.com/i/o/21274227/23f5ce4746bfe61cf94f30fb/File1490997732409)