# Autonomous Single App Mode Cordova Plugin

Cordova plugin that provide access to enable/disable ASAM (iOS only feature)

## How to use it:
 `ionic cordova plugin add https://github.com/mark-tabit/cordova-plugin-asam`

## Usage: 
 ```
    // Angular Usage -
    import { Component } from '@angular/core';
    import { Platform } from '@ionic/angular';

    declare var cordova: any;

    @Component({
      selector: 'app-home',
      templateUrl: 'home.page.html',
      styleUrls: ['home.page.scss'],
    })
    export class HomePage {

      constructor(private platform: Platform) {
        this.platform.ready().then(() => {
          cordova.plugins.ASAMHandler.enableASAM(() => {
            console.log('ASAM enabled successfully');
          }, (error) => {
            console.error('Failed to enable ASAM:', error);
          });
        });
      }

    }

    // Cordova Usage (inside index.js file) -
    // Check if ASAMHandler is available
    if (cordova.plugins && cordova.plugins.ASAMHandler) {
        this.initASAMCheck();
    } else {
        console.error("ASAMHandler plugin is not available.");
    }
    // Initialize ASAM check
    initASAMCheck: function() {
        try {
            cordova.plugins.ASAMHandler.checkASAM(function(enabled) {
                console.log("ASAM is " + (enabled ? "enabled" : "disabled"));
            }, function(error) {
                console.error("Failed to check ASAM status: ", error);
            });
        } catch(err) {
            console.error("Failed to run initASAMCheck: ", err);
        }
    }

  ```
  
