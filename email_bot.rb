# email_bot.rb
# don't forget to 'gem install mail'
require 'mail'


# Sending via GMail
Mail.defaults do
  delivery_method :smtp, { :address              => "smtp.gmail.com",
                           :port                 => 587,
                           :domain               => 'your.host.name',
                           :user_name            => 'tellyourmayor@gmail.com',
                           :password             => '9I7QkPiS',
                           :authentication       => 'plain',
                           :enable_starttls_auto => true  }
end

mail = Mail.new do
  from     'me@test.lindsaar.net'
  to       'aardace@gmail.com'
  subject  'Here is the image you wanted'
  body     File.read('body.txt')
  add_file :filename => 'somefile.png', :content => File.read('./somefile.png')
end

mail.deliver