require "net/smtp"
require "mail"
require "gmail"
require "colorize"

$your_email = "/"
$your_password = "/"

options = {
            :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'gmail.com',
            :user_name            => $your_email,
            :password             => $your_password,
            :authentication       => 'plain',
            :enable_starttls_auto => true
          }

Mail.defaults do
  delivery_method :smtp, options
end

if ARGV.length != 3
  puts 'Error: <e-mail to blast> <number of mails> <subject>'
else
  $i = 0
  while $i < ARGV[1].to_i  do
    puts("Sending mail n°#{$i+1}".blue)
    Mail.deliver do
      from $your_email
      to ARGV[0]
      subject "#{ARGV[2] == "RANDOM" ? Array.new(12){rand(36).to_s(36)}.join : ARGV[2]}"
      content_type 'text/html; charset=UTF-8'
      body   File.read('template.txt')
    end
    puts("Mail succesfully sended")
    $i +=1
 end
end
