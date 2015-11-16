import React from "react";
import ReactDOM from "react-dom";
import tapEvent from "react-tap-event-plugin";

import { Route, Router } from 'react-router';

import Base from "./basecomponent";

tapEvent();

ReactDOM.render((
  <Router>
    <Route path="/" component={ Base } />
  </Router>),
  document.querySelector('.container')
);
