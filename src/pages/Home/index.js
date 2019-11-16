import React, { Component } from 'react';
import { Route, BrowserRouter, Redirect, Switch } from 'react-router-dom';


class Hub extends Component{
  constructor(props) {
    super(props);
  }
render(){
  return (
    <div className="App">
        <h1>Everoot Homepage</h1>
          <p>
            <a href = "biketracker" className="bikeTrackerLink">Bike Tracker</a>
          </p>
    </div>

  );
}
}

export default Hub;