
const users = (state= null ,action) => {
    switch(action.type){
        case 'LOGIN_SUCCESS':
        case 'CURRENT_USER':
            return {
                id: action.user.id,
                userName: action.user.userName,
                user_adventure: action.user.user_adventures
            }
   
        case 'ADD_ADVENTURE':
           
           console.log(state)
           return {
                ...state,
               user_adventure: [
                   ...state.user_adventure,
                   action.id
               ]
           }
        case 'DELETE_ADVENTURE':
        

        const ua = state.user_adventure.filter(adventure => adventure.id !== action.id.adv.id)
       
      
            
            return {
                     ...state,
                        user_adventure: ua,
                        
            }
        case 'LOGOUT':
            return null    
                
            
        
        default:
            return state
    }
}


export default users