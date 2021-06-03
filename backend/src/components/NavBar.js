import React, { Component }from 'react'
import { Link } from 'react-router-dom'
import { connect } from 'react-redux'
import { withRouter } from 'react-router-dom'
import { logout } from '../actions/index'

class NavBar extends Component {


    handleLogout = () => {
        this.props.history.push('/')
        this.props.logout()
        localStorage.clear()
    }
   



    render() {
        // debugger
        return(
         <div className="navbar">
         <ul>
               { !this.props.users ? 
     <>
     
      <li><Link className= "item" to= '/login'>Login</Link></li>
      <li><Link className= "item" to= '/signup'>SignUp</Link></li>
      <li><Link className= "item" to= '/about'>About</Link></li>
     </>

     :
     <>
       <li><Link className= "item" to= '/dashboard' onClick={this.handleLogout}>Logout</Link></li>
       <li><Link className= "item" to= '/home'>Home</Link></li>
       <li><Link className= "item" to= '/adventures'>Adventures</Link></li>
      </>
      }
      </ul>
        </div>
                
        
        
        )
    }
 
 }
 
 const mapStateToProps = state => {
     return {
         users: state.users


     }
 }

 const mapDispatchToProps = {
     logout: logout
 }
 
 
 export default withRouter(connect(mapStateToProps, mapDispatchToProps)(NavBar))



 