import logo from './logo.svg';
import './App.css';
import React, { useEffect, useState } from 'react'

const apiKey = 'c65q1ouruwNQ8XXAmuLFY1mG'

function App() {
  const [standards, setStandards] = useState({})

  useEffect(() => {
    fetch(`https://commonstandardsproject.com/api/v1/standard_sets/180878796A3C448D808F38BCCCFD26CF_D2744619_grades-09-10-11-12?api-key=c65q1ouruwNQ8XXAmuLFY1mG`)
    .then(r => r.json())
    .then(data => setStandards(data))
    .catch((error) => {
      console.error('Error:', error)
    })
  }, [])

  // {
  //   headers: {
  //     'Access-Control-Allow-Origin': 'http://localhost:4000'
  //   }
  // }
  // {
  //   headers: {
  //     'Api-Key': apiKey
  //   }
  // }

  console.log(standards)

  return (
    <div className="App">
      Hello
    </div>
  )
}

export default App
