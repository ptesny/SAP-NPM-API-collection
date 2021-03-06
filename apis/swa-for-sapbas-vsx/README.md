[![Build Status](https://gkedevxlondon.jaas-gcp.cloud.sap.corp/buildStatus/icon?job=swa_ci/master)](https://gkedevxlondon.jaas-gcp.cloud.sap.corp/job/swa_ci/job/master/) 

# SAP Web Analytics npm package for Visual Code Extensions
Wrapper for SWA meant to be used in Visual code and SAP Application Studio.

## Usage

### Installation
TBD

### ENV
Everything in the environment should be set up, if using in AppStudio please make sure [swa-chart](https://github.wdf.sap.corp/app-studio/swa-chart) is installed as a ws-ext

### API
There are only two functions to call for usage

#### Import
```js
import { SWATracker } from '@sap/swa-for-sapbas-vsx';
```

#### Constructor
Has 3 params that are detailed in the constructor call:  
```js
/**
 * constructor
 * @param vsxPublisher should be publisher in package.json
 * @param vsxPackageName should be extension package.json name
 * @param errorListener callback for error, one such callback for all the errors we receive via all the track methods err can be string (err.message) or number (response.statusCode)
 */
var myErrorListener = (err) => { myErrorHandling(err); }
swa = new SWATracker("My Vscode Ext Publisher","My Package name", myErrorListener)
```

#### Track
After creating a new swa class as detailed above usage is pretty simple  
```js
/**
 * Send event to SWA for tracking
 * @param eventType string detailing what event are you looking to track (ex. "Generator Success!") 
 * @param {string[]} [custom_events] Optional, can accept up to 5, any more will be ignored
 */
swa.track("myEvent", ["custom event 1", "custom event 2", "This array is optional"]);
```

#### Example
```js
import * as vscode from 'vscode';
import {SWATracker} from "@sap/swa-for-sapbas-vsx";
// this method is called when your extension is activated
// your extension is activated the very first time the command is executed

export function activate(context: vscode.ExtensionContext) {
    const swa = new SWATracker("SAP", "vscode-close-editor", (err : string|number) => {console.log(err);});
    let cmd_closeActiveEditor = vscode.commands.registerCommand('extension.closeActiveEditor', () => {
        
        vscode.commands.executeCommand("workbench.action.closeActiveEditor");
        // Note that I don't have any custom events so I don't send an extra array
        swa.track("Close Active Editor");
    });
...
...
```

### Usage Comments
1. If running in Appstudio and SWA chart is not enabled code will throw error into console log that it is unable to track.  
2. Please take note that if environment is not configured correctly with privacy settings code will not send any tracking.  

## SWA Reports and Parameter Mapping
The following fields can be used for creating SWA reports:  

| SWA Field  | Origin |
| ------------- | ------------- |
| **eventType**  | The "myEvent" parameter sent via track API    |
| **user**  | Hashed user ID unless privacy is activated, then "na"    |
| **Custom event parameter 1**  | Event additional data 1, "custom event 1" sent via track API    |
| **Custom event parameter 2**  | Event additional data 2, "custom event 2" sent via track API    |
| **Custom event parameter 3**  | Event additional data 3, "custom event 3" sent via track API    |
| **Custom event parameter 4**  | Event additional data 4, "custom event 4" sent via track API    |
| **Custom event parameter 5**  | Event additional data 5, "custom event 5" sent via track API    |
| **Custom event parameter 6**  | IAAS (aws,ali,azure), set by the lib automatically   |
| **Custom event parameter 7**  | Datacenter (stg10.int, cry10.int, ap21, prd40), set by the lib automatically    |
| **Custom event parameter 8**  | Version (currently not supported), set by the lib automatically    |
| **Custom event parameter 9**  | Is SAP User where allowed, empty overwise, set by the lib automatically    |
| **Custom event parameter 10**  | The unique caller ID "vsxPublisher.vsxPackageName", set by lib automatically  |

