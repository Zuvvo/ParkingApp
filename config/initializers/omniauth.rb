Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, ENV['SLACK_CLIENT_ID'], ENV['SLACK_CLIENT_SECRET'],
  #scope: 'team:read,users:read,identify,bot',  callback_path: '/auth/slack/callback'
  scope: 'users:read',  callback_path: '/auth/slack/callback'
  #scope: 'identity:read:user',  callback_path: '/auth/slack/callback'
end