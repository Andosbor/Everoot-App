import React, { Component } from 'react';
import { Route, BrowserRouter, Redirect, Switch } from 'react-router-dom';
import './styles.css';

class BikeTracker extends Component{
    constructor(props) {
        super(props);
        this.state = {
          distance: 0,
          input: 0,
          isHidden: true
        }
        this.handleSubmit = this.handleSubmit.bind(this);
      }


handleChange(event){
  event.preventDefault();
  this.setState({
    input: event.target.value
  })
}

handleSubmit(){
  this.setState({
    distance: this.state.input,
    isHidden: false
  })
 }    
render(){
  return (
    <div className = "BikeTracker">
        <h1>Bike Tracker</h1>
        <br/>
        {!this.state.isHidden && <p className = "bikeDistance">You rode your bike {this.state.distance} miles this trip</p>}
        <p>How many miles did you ride your bike?</p>
        <input type = "number" min ="0" value ={this.state.input} onChange = {this.handleChange.bind(this)}/>
        <button onClick = {this.handleSubmit}> Submit </button>
    </div>
  );
}
}

export default BikeTracker;