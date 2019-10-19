import React, { Component } from 'react';
import axios from 'axios'

const QUOTES_API = "http://127.0.0.1:8000/api/?format=json"

class App extends Component{
  state = {
    quotes: []
  }

  componentDidMount(){
    this.getCategories()
  }

  // loading data from a remote endpoint 
  getCategories(){
    axios.get(QUOTES_API)
    .then(res => {
      this.setState({quotes: res.data})
    })
    .catch(err => {
      console.log(err)
    })
  }

  render(){
    return(
      <div>
        {this.state.quotes.map(item => (
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