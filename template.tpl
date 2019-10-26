// Copyright 2019 Google LLC

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     https://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

___INFO___

{
  "displayName": "Cardinal Path: Dynamic GA Property ID",
  "categories": ["ANALYTICS"],
  "description": "Simplifies the ability to dyanically populate a develoment and production Google Analytics Property ID without the use of nested tables",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "MACRO",
  "version": 1,
  "containerContexts": [
    "WEB"
  ],
  "brand": {}
}


___TEMPLATE_PARAMETERS___

[
  {
    "displayName": "Production UAID",
    "simpleValueType": true,
    "name": "uaid_prod",
    "type": "TEXT"
  },
  {
    "displayName": "Development UAID",
    "simpleValueType": true,
    "name": "uaid_dev",
    "type": "TEXT"
  },
  {
    "displayName": "Debug Mode Variable",
    "simpleValueType": true,
    "name": "debugMode",
    "type": "TEXT"
  },
  {
    "displayName": "Environments Variable",
    "simpleValueType": true,
    "name": "environment",
    "type": "TEXT"
  },
  {
    "displayName": "URL Pattern for Development Domains",
    "name": "domains",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "URL",
        "name": "url",
        "type": "TEXT"
      }
    ],
    "type": "SIMPLE_TABLE"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

var logger = require('logToConsole');

const log = data.debugMode ? logger : (() => {});
const getUrl = require('getUrl');
const encodeUri = require('encodeUri');
var uaid=data.uaid_prod;
const host=getUrl('host');
//log("host:"+host);

if(data.environment.indexOf("stag")>=0||data.environment.indexOf("dev")>=0||data.environment.indexOf("draft")>=0){
  uaid=data.uaid_dev;
}

if(data.debugMode===true){
  uaid=data.uaid_dev;
}

var i;
for (i = 0; i < data.domains.length; i++) { 
  if(host.indexOf(data.domains[i].url)>=0){
    uaid=data.uaid_dev;
    break;
  }
}
return uaid;


___NOTES___

Created on 10/25/2019, 7:07:27 PM

