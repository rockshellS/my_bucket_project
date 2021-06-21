import React, { Component } from 'react'
import { connect } from 'react-redux'
import { loginSuccess, displayAdventures } from '../actions/index'

import { Button, Form, Grid, Header, Segment } from 'semantic-ui-react'


class Signup extends Component {

    state = {
        userName: '',
        city: '',
        password: ''
       
    }




handleChange = (event) => {
    console.log(event.target.value)
    this.setState({
        [event.target.name]: event.target.value
    })
}

handleSubmit = (event) => {
   const user = {
     user: this.state
   }
    event.preventDefault()
    const reqObj = {
        method: "POST",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(user)
    }
    console.log(reqObj)
    fetch('http://localhost:3000/users', reqObj)
    .then(resp => resp.json())
    .then(respData =>{
      if (respData.error) {
        this.setState({
            error: respData.error
        })
    }else {
     this.props.loginSuccess(respData.user)
     localStorage.setItem('token', respData.token)
     this.props.history.push('/home')
    fetch('http://localhost:3000/adventures')
    .then(resp => resp.json())
    .then(adventures => {
    
      this.props.displayAdventures(adventures)
      this.props.history.push('/home')
   })

    }
      
    })

}
    render() {
        return (
            <div>
            {this.state.error ? <h3 style={{color: 'red'}}>{this.state.error}</h3> : null }
            <Grid className="grid1" textAlign='center' style={{ height: '100vh' }} verticalAlign='middle'>
            <Grid.Column style={{ maxWidth: 450 }}>
               <Header  inverted as='h2' color='white' textAlign='center'>
                 SignUp
              </Header> 
              <Form size='large' inverted onSubmit={this.handleSubmit}>
                <Segment  inverted stacked>
                  <Form.Input fluid icon='user' name={'userName'} iconPosition='left' placeholder='UserName' onChange={this.handleChange}/>
                  <Form.Input
                    name={'city'} 
                    iconPosition='left'
                    placeholder='Where are you from?'
                    onChange={this.handleChange}
                    type='city'
                  />
                  <Form.Input
                    fluid
                    icon='lock'
                    name={'password'} 
                    iconPosition='left'
                    placeholder='Password'
                    onChange={this.handleChange}
                    type='password'
                  />
        
                  <Button color='black' fluid size='large'>
                    Create Account
                  </Button>
                </Segment>
              </Form>
             
            </Grid.Column>
          </Grid>
          </div>
        )
    }
}

const mapStateToProps = (state) => {
   return {
        users: state.users
   }  
}

const mapDispatchToProps ={
    loginSuccess,
    displayAdventures
}

export default connect(mapStateToProps, mapDispatchToProps)(Signup)


