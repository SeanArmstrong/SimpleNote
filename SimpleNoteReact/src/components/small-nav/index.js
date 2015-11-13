import React from "react";

class SmallNav extends React.Component {

  render() {
    return (
      <nav className="mobile-nav hide-on-large-only">
        <div>
          <a href="#" data-activates="slide-out" className="button-collapse">
            <i className="mdi-navigation-menu"></i>
          </a>
        </div>
      </nav>
    );
  }
}

export default SmallNav;
