import React, { Component } from 'react';
import axios from 'axios'

const USERS_API = "http://127.0.0.1:8000/api/quotes/?format=json"

class App extends Component{
  state = {
    bytetrekusers: []
  }

  componentDidMount(){
    this.getUsers()
  }

  // loading data from a remote endpoint 
  getUsers(){
    axios.get(USERS_API)
    .then(res => {
      this.setState({bytetrekusers: res.data})
    })
    .catch(err => {
      console.log(err)
    })
  }

  render(){
    return(
      <div>
        {this.state.bytetrekusers.map(item => (
          <div>
            <h2>{item.name}</h2>
            <h1>{item.email}</h1>
            <h1>{item.phone}</h1>
            <h1>{item.address}</h1>
          </div>
        ))}
      </div>
    )
  }
}
export default App