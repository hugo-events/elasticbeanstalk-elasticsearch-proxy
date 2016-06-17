Beanstalk deployment configuration for nginx as a proxy server for Amazon Elastic Search Service
------------------------------------------------------------------------------------------------

As of June 2016, AWS Elastic Search Service doesn't support VPC, so to protect the ES instance, you have to use either
proxy, or request signing with SDK. Request signing might be an issue because of legacy code.
So this repository helps to set up a proxy in a couple of minutes with elasticbeanstalk.

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
    your staging elastic search endpoint, in form of ``endpoint.domain:443``
* PRODUCTION_SERVICE
    your staging elastic search endpoint, in form of ``endpoint.domain:443``
* STAGING_NGINX_SERVER_NAME
    space separated list of accepted server names to restrict your staging application to, in form of ``endpoint.domain``
* PRODUCTION_NGINX_SERVER_NAME
    space separated list of accepted server names to restrict your staging application to, in form of ``endpoint.domain:443``

After setting up the variables and deploying the change, you'll need to set up a security group for the running instance,
which will protect it properly.

License
-------

This software is licensed under the `MIT license <http://en.wikipedia.org/wiki/MIT_License>`_.

© 2016 Hugo Events
