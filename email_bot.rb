# email_bot.rb
require 'mail'

# mail = Mail.new do
#   from    'mikel@test.lindsaar.net'
#   to      'you@test.lindsaar.net'
#   subject 'This is a test email'
#   body    File.read('body.txt')
# end




# mail.to_s #=> "From: mikel@test.lindsaar.net\r\nTo: you@...


# puts "hi"
# puts mail.to_s
# Mail.defaults do
#   delivery_method :smtp, address: "localhost", port: 1025
# end

# Sending via GMail

# Mail.defaults do
#   delivery_method :smtp, { :address              => "smtp.gmail.com",
#                            :port                 => 587,
#                            :domain               => 'your.host.name',
#                            :user_name            => '<username>',
#                            :password             => '<password>',
#                            :authentication       => 'plain',
#                            :enable_starttls_auto => true  }
# end

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

# mail.delivery_method :sendmail

mail.deliver