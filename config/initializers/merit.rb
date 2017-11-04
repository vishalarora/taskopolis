Merit.setup do |config|
  config.checks_on_each_request = true
  config.orm = :active_record
  config.user_model_name = "User"
  config.current_user_method = "current_user"

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'
end
