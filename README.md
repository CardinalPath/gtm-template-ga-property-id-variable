
![Cardinal Path](https://github.com/CardinalPath/gtm-template-ga-property-id-variable/blob/master/images/cp-merkle-logo.png)

__*Courtesy of Merkle | Cardinal Path*__ - [http://cardinalpath.com/](https://www.cardinalpath.com/?utm_source=github.com&utm_campaign=gtm-template&utm_medium=referral)
# GTM Template Variable: Dynamic Measurement ID

## Introduction

It is a common practice to send test data to an alternate Property ID (UA-XXXXXX-01) so your development hits do not populate your production reporting.  Many will use nested tables for this but it can be a messy setup if trying to accommodate all types of testing.  

This variables will allow you to easily toggle based on [Environment](https://support.google.com/tagmanager/answer/6311518?hl=en), whether you are in [Debug Mode](https://support.google.com/tagmanager/answer/6107056?hl=en), or accessing a development domain.

 ## Variable Configuration
 ![GTM Variable](https://github.com/CardinalPath/gtm-template-ga-property-id-variable/blob/master/images/Capture-dynamicmeasurementid.PNG)
 1. __Production UAID__ should be populated with your production Measurement ID
 1. __Development UAID__ should be populated with your development Measurement ID
 1. Populate the non production URL in the "__URL Pattern for Developement Domains__" field.  You can omit the "http://" portion. Add a second row if you have a second develoment domain.  Using a value such as "dev" will match any URL that contains "dev" within the URL.  Regular Expressions are not supported.
 

