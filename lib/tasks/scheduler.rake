task :update_feed => :environment do
  SendSms.sms
end
