Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, '2707937853825.2695422973010', '3e145b07330ca7c4ad900b5863103f20', scope: 'team:read,users:read,identify,bot'
end