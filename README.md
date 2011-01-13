Heroku Sendgrid Test Email Plugin
=================================
This plugin adds a 'sendgrid' command to Heroku's CLI client, making it possible
(and easy) to test if your addon works by sending a test email to a specified
email.

Installation
------------
Luckily, Heroku's client makes it very easy to install plugins:

`heroku plugins:install git://github.com/hone/heroku-sendgrid-test-email.git`

Usage
-----
heroku sendgrid:test_email to='me@example.com'

You'll see either:

Success

or

Authentication error

License
-------
Please see MIT-LICENSE for more details

Copyright
---------
Copyright (c) 2011 Terence Lee.
