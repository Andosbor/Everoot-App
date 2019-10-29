import React, { Component } from 'react';
import Landing from './pages/Landing/index';
import SignUp from './pages/SignUp/index';
import './App.css';
import { Route, BrowserRouter, Redirect, Switch } from 'react-router-dom';

class App extends Component {
  render(){
    return (
      <BrowserRouter>
      <div>
        <Switch>
          <Route exact path="/" component={ Landing } />
          <Route path="/home" component={ Landing } />
          <Route path="/signup" component={ SignUp } />

          {/* <Redirect from='*' to='/' /> */}


        </Switch>


      </div>
    </BrowserRouter>
    );
  }
}

export default App;
