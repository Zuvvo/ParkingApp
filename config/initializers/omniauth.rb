Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, '2707937853825.2695422973010', '10d63f2e5056d1c0aa4641b7276bdce6',
  #scope: 'team:read,users:read,identify,bot',  callback_path: '/auth/slack/callback'
  scope: 'users:read',  callback_path: '/auth/slack/callback'
end