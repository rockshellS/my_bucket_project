import React, { Component } from 'react'
import { connect } from 'react-redux'
import { Button } from 'semantic-ui-react'
import {Link} from 'react-router-dom'
import {addAdventure} from '../actions/index'
// import Comments from './Comments'

class Show extends Component {

handleAddClick = (adventure) => {
  const info = {
    adventure: adventure,
    userid: this.props.userid
  }
  const reqObj = {
    method: "POST",
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(info)
  }
  fetch('http://localhost:3000/user_adventures', reqObj)
  .then(resp => resp.json())
  .then(respData => {
    this.props.addAdventure(respData)
    })
}


   render() {
       const {image, location, title, description, id} = this.props.adventures.show[0]
       const adventure = this.props.adventures.show[0]
       return(
         
         <center >
        
              <div className="About">
              <br></br>
              <br></br>
              <br></br>
                <img src={image} alt={title}/>
              
               <h3 class="p2">{location}</h3>
              <p class="p1">{description}</p>
             
             
                <Button  size="mini" basic color='teal' onClick={() => this.handleAddClick(adventure)}>
                <Link className= "view" to= '/home'>ADD</Link>
              </Button>
              {/* <Comments userId={this.props.userid}/> */}
              </div>
             
              </center>
             
       )
   } 
}


const mapStateToProps = (state) => {
    return{
      adventures: state.adventures,
      userid: state.users.id
   }
  }

  const mapDispatchToProps = {
    addAdventure: addAdventure
   
  }

export default connect(mapStateToProps, mapDispatchToProps)(Show)





