# Mail Blaster

Simple ruby script to blast an e-mail.

To use it 3 very simple steps:

 - 1
   - Replace the 2 variables (`$your_email`, `$your_password`) by your e-mail and your password (you need to use a gmail account, else you need to modify the smtp, host, port etc.)
 - 2
   - Go to `https://myaccount.google.com/lesssecureapps` and check the box
   - And now go on `https://accounts.google.com/DisplayUnlockCaptcha` and you have 10 minutes to run the script
 - 3
   - Execute this in your terminal :
     ```bash
     gem install net-smtp mail gmail colorize
     ```
   - And now do `ruby mailblaster.rb <email of the target> <number of emails> <object(type RANDOM for random object)>`

You can modify the content of the e-mail by editing the [template.txt](https://github.com/Waz0x/MailBlast/blob/main/template.txt) file. It support html


If you have any issue signal it [here](https://github.com/Waz0x/MailBlast/issues)

### (Don't forget to leave a star ⭐)
