task :update_feed => :environment do
  SendSms.sms
end

task :send_reminders => :environment do
  User.send_reminders
end