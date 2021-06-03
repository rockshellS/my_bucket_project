import React, { Component } from 'react'
import { Button } from 'semantic-ui-react'
import { connect } from 'react-redux'
import {deleteAdventure} from '../actions/index'
import { withRouter } from 'react-router-dom'
class HomeCard extends Component {
  handleDelete = (adventure) => {
   
       const user_adventure = this.props.user_adventure.find(user_adventure => parseInt(user_adventure.adventure_id) === adventure.id)
  
    fetch(`http://localhost:3000/user_adventures/${user_adventure.id}`, {method: "DELETE"})
    .then(resp => resp.json())
    .then(respData => {
      this.props.deleteAdventure(respData)
      this.props.history.push('/home')
    })
    
  }
  
  
   render() {
            const {image, title, location, description, id} = this.props.adventure
            const adventure = this.props.adventure
       return(
        <div className="gallery2">
                <img src={image} alt={title}/>
                <h4 class="p1">{title}</h4>
                <h3 class="p1">{location}</h3>
              
                
          
               <Button size='mini' basic color='teal' onClick={() => this.handleDelete(adventure)}>Completed</Button>
        </div>
       )
   } 
}


const mapStateToProps = (state) => {
  return {
    user_adventure: state.users.user_adventure
  }
}

const mapDispatchToProps = {
  deleteAdventure: deleteAdventure
}


export default connect(mapStateToProps, mapDispatchToProps)(withRouter(HomeCard))






