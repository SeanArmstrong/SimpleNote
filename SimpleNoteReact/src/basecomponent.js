import React from "react";
import MiniNode from "./components/mini-note";
import SmallNav from "./components/small-nav";

export default React.createClass({
  render() {
    return (
      <div className="greeting">
        <MiniNode subject="Hello" body="body" />
        <SmallNav />
      </div>
    );
  },
});
