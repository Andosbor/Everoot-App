import React, { Component } from 'react';
import logo from '../../assets/everoot-logo-white-01.png';
import { Route, BrowserRouter, Redirect, Switch } from 'react-router-dom';
import './styles.css';

class Landing extends Component{
  constructor(props) {
    super(props);
  }
render(){
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} alt="logo" />
        <p className = "signup">
          <a href = "signup" className = "signup">Sign Up</a>
        </p>
        <p className = "login">
         <a href = "home" className = "login">Login</a>
        </p>
      </header>
    </div>
  );
}
}

export default Landing;

/*Authentication libraries
    bcrypt-nodejs
    express-session
    passport
    passport-local
*/