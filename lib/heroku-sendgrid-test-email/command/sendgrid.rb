require 'heroku/command/base'

# helper commands for sendgrid
class Heroku::Command::Sendgrid < Heroku::Command::Base
  # sendgrid:test_email to=me@example.com
  #
  # send a test email to see if the ENV vars are setup properly
  #
  def test_email
    app  = extract_app
    vars = heroku.config_vars(app)
    to = ''
    args.each do |arg|
      key, value = arg.split("=")
      to = value if key == "to"
    end

    if to.empty?
      error "please specify an address to send to using to=<me@example.com>"
    else
      resource = RestClient::Resource.new("https://pony-mail-test.heroku.com")
      display resource["/mail"].post(:sendgrid_username => vars["SENDGRID_USERNAME"],
                                     :sendgrid_password => vars["SENDGRID_PASSWORD"],
                                     :sendgrid_domain   => vars["SENDGRID_DOMAIN"],
                                     :to                => to)
    end
  end
end
