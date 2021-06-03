import React, { Component } from 'react'
import { connect } from 'react-redux'
import HomeCard from './HomeCard'
class Home extends Component {
    render(){
        return(
            <center>
                <div className="gallery1">
                <br></br>
                    { this.props.users.user_adventure.length < 1 ? <h2 className="header-text">Please choose an Adventure</h2> : <h2 className="header-text">My BucketList</h2> }
                    <br></br>
                        <div id="adventure-collection" className="ui items">
                            {this.props.users.user_adventure.map(adventure =>  <HomeCard adventure={adventure.adventure} key={adventure.adventure.id}/>)}
                         </div>
                 </div>
            </center>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        adventures: state.adventures,
        users: state.users
    }
}

export default connect(mapStateToProps)(Home)