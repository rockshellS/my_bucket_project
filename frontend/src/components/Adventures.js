import React, { Component } from 'react'
import AdventureCard from './AdventureCard'
import { connect } from 'react-redux'

class Adventures extends Component {
    render() {
        
        const renderAdventures = this.props.adventures.all.map(adventure =>(
            <AdventureCard 
            key={adventure.id}
            adventure={adventure}
            />
        ))
        return (
            <center>
            
                <div className="gallery1">
                <br></br>
                    <h2 className="header-text">Choose an Adventure!</h2>
                <center>
                <br></br>
                    <div id="adventure-collection" className="ui items">
                    {renderAdventures}
                 </div>
                 </center>
                </div>
            </center>
        )
    }
}

function mapStateToProps(state){
    return {
        adventures: state.adventures
    }
}

export default connect(mapStateToProps)(Adventures)

