import Unit from './Unit.jsx'
import './App.css'

function Property(props) {
  let property = props.property
  let isViewing = props.isViewing

  function handleClick() {
     props.onChildEvent()
  }

  return (
    <div className ='border-t-4 p-4'>
      <div className='text-2xl'>{property.name}</div>
      <div>{property.address}</div>
      <div> Built: {property.year_built}</div>
      <a href={property.website_url}>{property.website_url}</a>
      { !isViewing && <div>
        <button onClick={handleClick}
        className="text-white !bg-blue-400"> View Property </button>
        </div>
      }
      { isViewing && <div>
        {property.units.map((unit, index) => (
        <Unit
          unit={unit}
        />
        ))}
        <button onClick={handleClick}
          className="text-white !bg-blue-400"> Back </button>
        </div>
      }
    </div>
  )
}

export default Property
