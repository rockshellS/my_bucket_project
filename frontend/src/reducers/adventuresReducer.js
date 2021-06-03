const adventures = (state= [] ,action) => {
   
    switch(action.type){
       
        case 'DISPLAY_ADVENTURES':
            return {
                all:
                action.adventures
            }
            case "SHOW_ADVENTURE":
                console.log(state)
                let  single_adventure = state.all.filter(adventure => adventure.id === action.id)
               
                return {
                    ...state,
                    show: single_adventure,
                      }
          
        default:
            return state
    }
}


export default adventures