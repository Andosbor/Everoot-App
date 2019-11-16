import React, { Component } from 'react';
import Landing from './pages/Landing';
import SignUp from './pages/SignUp';
import Home from './pages/Home';
import BikeTracker from './pages/BikeTracker';
import './styles/App.css';
import { Route, BrowserRouter, Redirect, Switch } from 'react-router-dom';

class App extends Component {
  render(){
    return (
      <BrowserRouter>
      <div>
        <Switch>
          <Route exact path="/" component={ Landing } />
          <Route path="/home" component={ Home } />
          <Route path="/signup" component={ SignUp } />
          <Route path="/biketracker" component={ BikeTracker } />

          {/* <Redirect from='*' to='/' /> */}

        </Switch>


      </div>
    </BrowserRouter>
    );
  }
}

export default App;
