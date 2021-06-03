// import React, { Component } from 'react'
// import { Button, Comment, Form, Header } from 'semantic-ui-react'

// class Comments extends Component {
//     state = {
//         comment: " "
//     }
   
//     handleChange = (event) => {
//         this.setState({
//             comment: event.target.value
//         })
//     }

//    handleSubmit = (event) => {
//        event.preventDefault()
//        const reqObj = {
//            method: "POST",
//            headers: {
//                'Content-Type': 'aplication/json'
//            },
//            body: JSON.stringify(this.state)
//        }
//        this.setState({
//            comment: " "
//        })
       
//    }
//     render() {
        
//         return (
//         <div>
//           <Comment.Group>
//             <Header as='h3' dividing>Comments</Header>
//                 <Form add comment onSubmit={this.handleSubmit}>
//                     <Form.TextArea comment={'comment'} onChange={this.handleChange}/>
      
//                         <Button content='Add Comment' labelPosition='left' icon='edit' primary />
//                 </Form>
//           </Comment.Group>
           
//         </div>
//         )
//     }
// }

// export default Comments


