import React from "react";
import MiniNode from "./components/mini-note";
import SmallNav from "./components/small-nav";
import LeftNav from 'material-ui/lib/left-nav';

export default React.createClass({
  render() {
    let menuItems = [ ];
    return (
      <div>
        <LeftNav />
        <MiniNode subject="Hello" body="body" />
        <SmallNav />
      </div>
    );
  },
});
