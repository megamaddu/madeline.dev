import React from "react";
import ReactDOM from "react-dom";

import { mkApp } from "./output/Madeline.App";

function main() {
  const app = mkApp();
  ReactDOM.render(React.createElement(app), document.getElementById("app"));
}

// HMR stuff
// For more info see: https://parceljs.org/hmr.html
if (module.hot) {
  module.hot.accept(function() {
    console.log("Reloaded, running main again");
    main();
  });
}

console.log("Starting app");
main();
