import React from 'react'
import { connect } from 'react-redux'
import NavBar from './components/NavBar'
import Login from './components/Login'
import Signup from './components/Signup'
import About from './components/About'
import Adventures from './components/Adventures'
import Show from './components/Show'
import Home from './components/Home'
import './App.css';
import { Route, Switch } from 'react-router-dom'
import { withRouter } from 'react-router-dom'
import { currentUser, displayAdventures } from './actions/index'
import Dashboard from './components/Dashboard'


class App extends React.Component {
  componentDidMount(){
   
   const token = localStorage.getItem('token')

   if (!token){
     this.props.history.push('/dashboard')
   }else {

    const reqObj = {
      method: 'GET',
      headers: {
        'Authorization': `Bearer ${token}`
      }
    }

    fetch('http://localhost:3000/current_user', reqObj)
    .then(resp => resp.json())
    .then(data => {
      if (data.error){
        this.props.history.push('/login')
      } else {
        this.props.currentUser(data)
        this.fetchAdventures()
      }
    })
  }
}

fetchAdventures = () => {
  fetch('http://localhost:3000/adventures')
            .then(resp => resp.json())
            .then(adventures => {
              this.props.displayAdventures(adventures)
  })
}

  render() {

    return (
      
      <div className="br">
          <br></br>
            <header>BucketList</header>
          <NavBar />
            <Switch>
              <Route path='/dashboard' component={Dashboard}/>
              <Route path='/about' component={About}/>
              <Route path='/signup' component={Signup}/>
              <Route path='/login' component={Login}/>
              <Route path='/home' component={Home}/>
              <Route path='/adventures' component={Adventures}/>
              <Route exact path='/show/:id' component={Show}/>
            </Switch>
        </div>
      
    );

  }
 
}

const mapDispatchToProps =  {
  currentUser: currentUser,
  displayAdventures: displayAdventures
}


export default connect(null, mapDispatchToProps)(withRouter(App))
