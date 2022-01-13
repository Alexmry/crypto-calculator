import React, { Component } from "react";
import PortfolioItem from "./PortfolioItem";

class Portfolio extends Component {
  constructor(props) {
    super(props);
  }

  render() {

    const PortfolioItems = this.props.portfolio.map((item, index) => )

      return (
          <div>
              <div className="portfolio-value">
                  <div className="portfolio-value--header">Your Total Portfolio Value is</div>
                  <div className="portfolio-value-- content">TOTAL</div>
              </div>
              <div className="portfolio-items">
                <PortfolioItem/>
              </div>
          </div>
      )
  }
}

export default Portfolio;