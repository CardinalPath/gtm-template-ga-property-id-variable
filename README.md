# Cardinal Path GTM Template Variable

## Introduction

It is a common practice to send test data to an alternate Property ID (UA-XXXXXX-01) so your development hits do not populate your production reporting.  Many will use nested tables for this but it can be a messy setup if trying to accommodate all types of testing.  

This variables will allow you to easily toggle based on [Environment](https://support.google.com/tagmanager/answer/6311518?hl=en), whether you are in [Debug Mode](https://support.google.com/tagmanager/answer/6107056?hl=en), or accessing a development domain.

## Setup Instructions
*GTM>Variables->Built -In Variables
**Enable "Built-In" Variables: "Debug Mode" and "Environment Name".

