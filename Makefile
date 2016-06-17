# init elastic beanstalk environment
init:
	eb init --profile=$(AWS_PROFILE) $(EB_APP_NAME)

# deploy to given elastic beanstalk environment
deploy:
	eb deploy --profile=$(AWS_PROFILE) $(EB_ENVIRONMENT) --staged

# run local instance
local-run:
	eb local run --profile=$(AWS_PROFILE) --envvars PRODUCTION_SERVICE_URL=google.com,STAGING_SERVICE_URL=google.com,STAGING_NGINX_SERVER_NAME=localhost,PRODUCTION_NGINX_SERVER_NAME=localhost
