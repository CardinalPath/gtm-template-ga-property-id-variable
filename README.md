

# GTM Template Variable: Dynamic Property ID


__*Courtesy of Cardinal Path*__ - [http://cardinalpath.com/](https://www.cardinalpath.com/?utm_source=github.com&utm_campaign=gtm-template&utm_medium=referral)
![Cardinal Path](https://github.com/CardinalPath/gtm-template-ga-property-id-variable/blob/master/images/cardinal-path-logo.png)

## Introduction

It is a common practice to send test data to an alternate Property ID (UA-XXXXXX-01) so your development hits do not populate your production reporting.  Many will use nested tables for this but it can be a messy setup if trying to accommodate all types of testing.  

This variables will allow you to easily toggle based on [Environment](https://support.google.com/tagmanager/answer/6311518?hl=en), whether you are in [Debug Mode](https://support.google.com/tagmanager/answer/6107056?hl=en), or accessing a development domain.

## Setup Instructions
* Navigate to GTM>Variables->Built -In Variables:
   * Enable two "Built-In" Variables: "Debug Mode" and "Environment Name".
* Navigate to Admin>Environments
  * Create a new Environment titled "Dev"
  * Obtain installation instructions and send to develop to install on a lower environment domain (such as staging.mysite.com)
* Navigate to GTM>User Defined Variables:
  * Create new variable using this template

 ## Variable Configuration
 1. __Production UAID__ should be populated with your production Property ID
 1. __Development UAID__ should be populated with your production Property ID
 1. __Debug Mode Variable__ should be populated with the "Debug Mode" variable that you would have enabled in previous steps.
 1. __Environment Variable__ should be populated with the "Environment Name" variable that you would have enabled in previous steps.
 1. Populate the non production URL in the "__URL Pattern for Developement Domains__" field.  You can omit the "http://" portion. Add a second row if you have a second develoment domain.  Using a value such as "dev" will match any URL that contains "dev" within the URL.  Regular Expressions are not supported.
 

