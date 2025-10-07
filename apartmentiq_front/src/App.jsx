import { useEffect, useState } from 'react'
import './App.css'
import Property from './Property.jsx'

function App() {
  const [properties, setProperties] = useState([])
  const [currentProperty, setCurrentProperty] = useState(null)

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("http://localhost:3000/properties")
      const result = await response.json()
      setProperties(result)
    };
    fetchData();
  }, []);

  function handlePropertyClick(property) {
    setCurrentProperty(property)
  }

  if(currentProperty) {
    return <Property
      property={currentProperty}
      isViewing={true}
      onChildEvent={() => handlePropertyClick(null)}
    />
  }
  return (
    <div>
      <div className="text-5xl">Properties</div>
      {properties.map((property, index) => (
        <div>
        <Property
          property={property}
          onChildEvent={() => handlePropertyClick(property)}
        />
        </div>
      ))}
    </div>
  )
}

export default App
