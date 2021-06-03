export const loginSuccess = (user) => {
    return {
        type: 'LOGIN_SUCCESS',
        user: user
    }
}


export const currentUser = (user) => {
    return {
        type: 'CURRENT_USER',
        user: user
    }
}
export const createUser = (user) => {
    return {
        type: 'CREATE_USER',
        user: user
    }
}

export const displayAdventures = (adventures) => {
    return {
        
        type: 'DISPLAY_ADVENTURES',
        adventures: adventures
    }
}

export const showAdventure = (id) => {
    return {
        
        type: 'SHOW_ADVENTURE',
        id
    }
}
export const addAdventure = (id) => {
    return {
        
        type: 'ADD_ADVENTURE',
        id
    }
}
export const deleteAdventure = (id) => {
    return {
        
        type: 'DELETE_ADVENTURE',
        id
    }
}
export const logout = (user) => {
    return {
        
        type: 'LOGOUT',
        user: null
    }
}