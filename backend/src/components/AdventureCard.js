
import React, { Component } from 'react'
import { connect } from 'react-redux'
import {showAdventure} from '../actions/index'
import {Link} from 'react-router-dom'
import { Button } from 'semantic-ui-react'

class AdventureCard extends Component {
    render() {
      const {image, title, id} = this.props.adventure
        return (
          <div className="gallery">
            <img src={image} alt={title} />
            <br></br>
            <br></br>
            <p class="p1">{title}</p>
            <br></br>
          
           
            <Button  size="mini" basic color='teal' onClick={() => this.props.showAdventure(id)}>
            <Link className= "view" to= {`/show/${id}`}>VIEW</Link>
            </Button>
           
          </div>
        )
    }
}

const mapStateToProps = (state) => {
  return{
    adventures: state.adventures
 }
}

const mapDispatchToProps = {
  showAdventure: showAdventure
}

export default connect(mapStateToProps,mapDispatchToProps)(AdventureCard)



