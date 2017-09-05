'use strict';

const {defineSupportCode} = require('cucumber');

defineSupportCode(function({After,Before}){
  // Code to attach screenshot to the report on test failure
  After(function(scenario){
    if(scenario.isFailed()){
      let attach = this.attach;
      return browser.takeScreenshot().then(function(png){
        let decodedBase64Image = new Buffer(png,"base64");
        attach(decodedBase64Image,"image/png");

      });
    }

  });

});
