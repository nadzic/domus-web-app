## Overview

Domus App is ruby on rails application, which analyzes data from car driving simulator and suggests the driver how to drive the electric car to optimize the battery consumption.

## Stack we are using
- Ruby
- Rails 5.2.0
- PostgreSQL

## Installation

### db

We use postgreSQL: https://www.postgresql.org/download/

### rails app

Clone project and do the following:

```
cd domusapp
bundle install
rake db:create
rake db:migrate
```
After you install

### Plugins to install (VSCode)

- Ruby

## Running app
```
rails s
```
## Help

```
rails -h
```
## Database design

![database model](https://raw.githubusercontent.com/nadzic/domusapp/master/app/assets/images/er-diagram.png)

## Systems

Information about our systems.

### Staging
* Info:
  * URL: http://domus-staging.eu-central-1.elasticbeanstalk.com/
  * Deploys: Continuous deployment on develop branch with CodeDeploy
  * Hosted: AWS Elastic Beanstalk

### Production
* Info:
  * URL: /
  * Deploys: /
  * Hosted: /
