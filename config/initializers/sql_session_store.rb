# Work out which session store adapter to use
environment = Rails.configuration.environment
adapter = Rails.configuration.database_configuration[environment]["adapter"]
session_class = adapter + "_session"

# Configure SqlSessionStore
SqlSessionStore.session_class = session_class.camelize.constantize
