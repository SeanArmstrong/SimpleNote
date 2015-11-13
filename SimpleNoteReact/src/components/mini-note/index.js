import React from "react";
import CSS from "!style!css!sass!./../../stylesheets/base.scss";

class MiniNote extends React.Component {

  render() {
    return (
      <div onClick={ this.props.onClick } className="note-content-container">
        <div className="note-content-container-header">
          <span className="note-content-subject">{ this.props.subject }</span>
          <p className="note-content-body">{ this.props.body }</p>
        </div>
      </div>
    );
  }
}

export default MiniNote;
