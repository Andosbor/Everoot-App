import React from 'react';
import logo from './images/everoot-logo-white-01.png';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} alt="logo" />
        <p className = "signup">
          <a href = "signup" className = "signup">Sign Up</a>
        </p>
        <p className = "login">
         <a href = "employee" className = "login">Login</a>
        </p>
      </header>
    </div>
  );
}

export default App;
