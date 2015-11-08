# irkit
executing tasks for irkit

## How to set up
Setup your irkit and get clientkey, deviceid and messages in reference to below.  
[http://getirkit.com](url)  
Register app on Heroku  

    $ git push heroku master
    $ heroku config:set IRKIT_CLIENTLEY='[clientkey of your irkit]'
    $ heroku config:set IRKIT_DEVICEID='[deviceid of your irkit]'
Register Heroku Scheduler `bundle exec ruby sleep.rb` at your time for sleep.
