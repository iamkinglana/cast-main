require 'rack/proxy'

class Proxy < Rack::Proxy
  def initialize(app)
    @app = app
  end

  def perform_request(env)
    # Modify the request headers if needed
    env['HTTP_ORIGIN'] = '*' # Set your local development server's origin

    # Change the target URL to the API server
    env['HTTP_HOST'] = 'cast-main.onrender.com'
    env['HTTP_X_FORWARDED_HOST'] = 'cast-main.onrender.com'
    env['HTTP_X_FORWARDED_SERVER'] = 'cast-main.onrender.com'
    env['HTTP_X_FORWARDED_FOR'] = env['REMOTE_ADDR']
    env['HTTP_X_REAL_IP'] = env['REMOTE_ADDR']
    env['REQUEST_PATH'] = '/' # Set the appropriate path for your API endpoint

    super(env)
  end
end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Set your local development server's origin
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end

Rails.application.config.middleware.use Proxy
