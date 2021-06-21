import React, { Component } from 'react'
import { connect } from 'react-redux'
import { displayAdventures, loginSuccess } from '../actions/index'
import { Button, Form, Grid, Header, Segment } from 'semantic-ui-react'


class Login extends Component {

    state = {
        userName: 'Rachelle',
        password: 'abc',
        error: ''
    }

handleChange = (event) => {
    // console.log(event.target.value)
    this.setState({
        [event.target.name]: event.target.value
    })
}

handleSubmit = (event) => {
    event.preventDefault()
    const reqObj = {
        method: "POST",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(this.state)
    }
        this.setState({
            name: '',
            password: ''
         })
        fetch('http://localhost:3000/user_auth', reqObj)
        .then(resp => resp.json())
        .then(respData => {
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
            <Grid className="grid1" textAlign='center' style={{ height: '100vh' }} verticalAlign='middle'>
            <Grid.Column style={{ maxWidth: 450 }}>
            {this.state.error ? <h3 style={{color: 'red'}}>{this.state.error}</h3> : null }
            
              <Form size='large' onSubmit={this.handleSubmit}>
               <Segment inverted stacked>
                 <Form.Input fluid icon='user' name={'userName'} iconPosition='left' placeholder='UserName' onChange={this.handleChange}/>
                  <Form.Input
                    fluid
                  icon='lock'
                     name={'password'} 
                   iconPosition='left'
                   placeholder='Password'
                   onChange={this.handleChange}
                   type='password'/>
           
                  <Button color='black' fluid size='large'>
                    Login
                 </Button>
                </Segment>
             </Form>
           
            
           </Grid.Column>
            </Grid> 
             

       
        )
    }
}

//points to whatever action we associtate with it
const mapDispatchToProps = {
    loginSuccess: loginSuccess,
    displayAdventures: displayAdventures
}


export default connect(null, mapDispatchToProps)(Login)



