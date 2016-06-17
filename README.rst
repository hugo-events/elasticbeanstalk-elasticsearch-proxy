Beanstalk deployment configuration for nginx as a proxy server for Amazon Elastic Search Service
------------------------------------------------------------------------------------------------

Deployment
----------

You will need to install and configure elastic beanstalk `CLI <http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html>`_


If it's a first time deployment with this clone, initialize an environment:

::

    make init AWS_PROFILE=<your aws profile> EB_APP_NAME=<your application name>

It's as easy as:

::

    make deploy AWS_PROFILE=<your aws profile> EB_ENVIRONMENT=<your elastic beanstalk environment>

You will need to create and configure elastic beanstalk environment prior to the deployment command.


Configuration
-------------

You will need to set up such environment variables for your elastic beanstalk environment:

* STAGING_SERVICE
    your staging elastic search endpoint
* PRODUCTION_SERVICE
    your staging elastic search endpoint
* STAGING_NGINX_SERVER_NAME
    space separated list of accepted server names to restrict your staging application to
* PRODUCTION_NGINX_SERVER_NAME
    space separated list of accepted server names to restrict your staging application to

License
-------

This software is licensed under the `MIT license <http://en.wikipedia.org/wiki/MIT_License>`_.

© 2016 Hugo Events
