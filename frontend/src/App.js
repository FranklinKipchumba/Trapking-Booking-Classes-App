import React from 'react';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Home from './components/Home';
import Danceclass from './components/DanceClass';
import Signup from './components/Signup';
import Login from './components/Login';
import About from './components/About';
import Booking from './components/Booking';
import Payment from './components/Payment';
import Schedule from './components/Schedule';
import './css/App.css';

function App() {
  return (
    <Router>
      <div>
        <Navbar />
          <Route exact path="/" component={Home} />
          <Route path="/danceclass" component={Danceclass} />
          <Route path="/signup" component={Signup} />
          <Route path="/login" component={Login} />
          <Route path="/about" component={About} />
          <Route path="/booking" component={Booking} />
          <Route path="/payment" component={Payment} />
          <Route path="/schedule" component={Schedule} />
      </div>
    </Router>
  );
}

export default App;

